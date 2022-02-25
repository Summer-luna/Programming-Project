async function postUrl(url='', data={}){
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
        console.log('new data:',newData);
        const results = document.querySelector('#results')
        //console.log(results);
        const div = document.createElement('div')
        div.innerHTML = `Score Tag: ${newData.score_tag} <br>
                                Agreement: ${newData.agreement} <br>
                                Subjectivity: ${newData.agreement}<br> Confidence: ${newData.confidence}<br>
                                Irony: ${newData.irony}`
        results.appendChild(div)
    }catch(error){
        console.log('error', error);
    }
}
const error_msg = document.createElement('div');
function handleSubmit(event) {
    event.preventDefault();

    const pattern = /[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)/

    let regex = new RegExp(pattern);
    
    
    const form = document.querySelector('.form');
    let urlText = document.querySelector('#name');
    
    // check what text was put into the form field
    if(urlText.value != "" && urlText.value != null && urlText.value.match(regex)){
        postUrl('http://localhost:8081/getUrl', {u: urlText.value})
    }else{
        error_msg.textContent = "Please Enter Valid URL";
        error_msg.style.color = "red"; 
        form.insertBefore(error_msg, urlText);
    }
}

export { handleSubmit }
