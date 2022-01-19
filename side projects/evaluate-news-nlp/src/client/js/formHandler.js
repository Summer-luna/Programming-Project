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

function handleSubmit(event) {
    event.preventDefault();

    let urlText = document.querySelector('#name').value;
    
    postUrl('/getUrl', {u: urlText})
    // check what text was put into the form field
}

export { handleSubmit }
