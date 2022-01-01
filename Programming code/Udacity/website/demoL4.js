/* Web API with Fetch Demo */

let baseURL = "http://api.animalinfo.org/data/?animal=";
let apiKey = "&appid=9f15e45060...";
const newAnimal = document.querySelector("#animal").value;

document.querySelector("#generate").addEventListener('click', performAction);

function performAction(e){
    getAnimalDemo(baseURL, newAnimal, apiKey)
}

const getAnimalDemo = async (baseURL, newAnimal, apiKey) => {
    const res = await fetch('/fakeAnimalData')
    try{
        const data = await res.json();
        console.log(data);
    }catch(error){
        console.log("error", error);
    }
}