/* Changing promises to GET and POST data */
document.querySelector("#generate").addEventListener('click', performAction);

function performAction(e){
    // select the actual value of an HTML input to include in POST
    const fav = document.querySelector("#fav").value;

    // Faking API call
    getAnimal('/fakeAnimalData')
    .then(function(data){
        console.log(data);
        postData('/addAnimal', {animal:data.animal, fact:data.fact, fav:fav})

        // update UI
        updateUI()
    })
}

/* Post Example */

const postData = async (url = '', data = {}) => {
    const response = await fetch(url, {
        method: "POST", // GET, POST, PUT, DELETE. etc.
        credentials: "same-origin", 
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(data)
    })

    try{
        const newData = await response.json();
        console.log(newData);
    }catch(error){
        console.log("error", error);
    }
}

/* Update UI */
const updateUI = async () => {
    const request = await fetch('/all')

    try{
        const allData = request.json()
        console.log(allData);
        document.querySelector("#animalName").textContent = allData[0].animal;
        document.querySelector("#animalFact").textContent = allData[0].facts;
        document.querySelector("#animalFav").textContent = allData[0].fav;
    }catch(error){
        console.log("error", error);
    }
}