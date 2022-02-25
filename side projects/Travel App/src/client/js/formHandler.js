const div = document.createElement('div')

async function postLocation(url='', data={}){
    const res = await fetch(url, {
        method: 'POST',
        credentials: 'same-origin',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
    });
    
    try{
        const newData = await res.json();
        
        const results = document.querySelector('#results')
        const date = document.querySelector('#date').value 
        
        // calculate the difference of two dates
        let date1 = new Date()
        let date2 = new Date(date + 'T00:00:00')
        let difference_i_date = date2.getDate() - date1.getDate()
        
        // display data 
        div.innerHTML = `My trip to: ${newData.toponymName}, ${newData.countryName} <br> 
        Departing: ${date} <br>
        ${newData.toponymName}, ${newData.countryName} is ${difference_i_date} days away <br>
        Typical weather for then is: <br>
        High - ${newData.highTemp}, Low - ${newData.lowTemp} <br>
        ${newData.weatherDescription} throughout the day. <br>
        <img src="${newData.img}">`;

        results.appendChild(div);
    }catch(error){
        console.log('error', error);
    }
}

function handleSubmit(event) {
    event.preventDefault();
    
    //pass user input (position, date) to server
    let position = document.querySelector('#location');
    let date = document.querySelector('#date');
    postLocation('http://localhost:8081/getPosition', {p: position.value, date:date.value})  
}

export { handleSubmit }
