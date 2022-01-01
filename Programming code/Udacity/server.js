// TODO-Express to run server and routes
const express = require('express')

// TODO-Start up an instance of app
const app = express();

/* Dependencies */

// middleware
const bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// TODO-Cors for cross origin allowance
const cors = require('cors');
// let browser and server to talk each other without security interapt 
app.use(cors());

/* Initializing the main project folder */
app.use(express.static('website'));

const port = 8000;

const server = app.listen(port, ()=>{
    console.log("server is running");
    console.log(`running on the localhost: ${port}`);
})


// Animal Web API Example

// Dummy API Endpoint
const fakeData = {
    animal: "lion",
    fact: 'lions are fun'
}

app.get('/fakeAnimalData', getFakeData)

function getFakeData(req, res){
    res.send(fakeData)
}

const animalData = [];

app.get("/all", getData)

function getData(req, res){
    res.send("animalData")
    console.log(animalData);
}

// POST Route

app.post('/addAnimal', addAnimal)

function addAnimal(req, res){
    newEntry = {
        animal: req.body.animal,
        facts: req.body.animal,
        fav: req.body.animal
    }

    animalData.push(newAnimal)
    res.send(animalData)
    console.log(animalData);
}

