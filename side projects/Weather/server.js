// Setup empty JS object to act as endpoint for all routes
projectData = {};

// Express to run server and routes
const express = require('express');
// Start up an instance of app
const app = express();

/* Dependencies */
/* Middleware*/
const cors = require('cors');
const bodyParser = require('body-parser');
//Here we are configuring express to use body-parser as middle-ware.
// Cors for cross origin allowance
app.use(cors());
app.use(bodyParser.urlencoded({extended:false}));
app.use(bodyParser.json());
// Initialize the main project folder

app.use(express.static('website'));

// Spin up the server
// Callback to debug
const port = 8000;
// Initialize all route with a callback function
const server = app.listen(port, ()=>{
    console.log(`Running on the localhost: ${port}`);
})

// Callback function to complete GET '/all'
app.get('/all', (req, res)=>{
    res.send(projectData);
})

// Post Route
//const data = [];
app.post('/addEntry', (req,res)=>{
    
    const newEntry = {
        date: req.body.date,
        temp: req.body.temp,
        content: req.body.content
    }

    projectData = newEntry;

    res.send(projectData);
})


