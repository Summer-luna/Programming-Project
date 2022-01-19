/* Global Variables */
const zip = document.querySelector('#zip');
const feelings = document.querySelector('#feelings');
const generate = document.querySelector('#generate');

const date = document.querySelector('#date');
const temp = document.querySelector('#temp');
const content = document.querySelector('#content');
const entry = document.querySelector('.entry');

// Create a new date instance dynamically with JS
let d = new Date();
let newDate = d.getMonth()+1 + '.' + d.getDate()+ '.' + d.getFullYear();

// api credentials
const apiKey = "c6cd54c06232c32272f596ffb0700d54";

generate.addEventListener('click', ()=>{
    if(zip.value != "" && zip.value != null){
        const value = zip.value;
        const countryCode = 'us';
        const api = `https://api.openweathermap.org/data/2.5/weather?zip=${value},${countryCode}&appid=${apiKey}&units=imperial`;
        main(api);   
        entry.style.visibility = "visible";  
    }
})

function main(api){
    weather(api)
    .then( function(data){
        add('/addEntry', {date: newDate, temp: data, content:feelings.value})
    } )
    .then(function(){getAll('/all')})
}

/* async function main(api){
    const x = await weather(api);
    console.log(x);
    add('/addEntry', {date: newDate, temp: x, content:feelings.value});
    getAll('/all');
} */

// fetch wether API
const weather = async (url) => {
    
    /* fetch(url)
    .then(response => response.json())
    .then(data => {
        console.log(data);
    }) */

    const response = await fetch(url);

    try{
        // wait newData return, then execute next line
        const newData = await response.json();
        const data = newData.main.temp;
        return data;
    }catch(error){
        console.log('error', error);
    }
}

// store date, temp, and feel to server side
const add = async (url = '', data = {}) => {
    const response = await fetch(url, {
        method: 'POST',
        credentials: 'same-origin',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data),
    });

    try{
        const newData = await response.json();
        console.log(newData);
        //return newData;

    }catch(error){
        console.log('error', error);
    }
};

// get all data from server and diplay on the screen
const getAll = async (url='') => {
    const res = await fetch(url);
    try{
        const newData = await res.json();
        //console.log(newData);
        date.textContent = 'Date: ' + newData.date;
        temp.innerHTML = 'Temp ' + newData.temp + ' &deg;F';
        content.textContent = 'Feelings: ' + newData.content;
    }catch(error){
        console.log('error', error);
    }
} 



