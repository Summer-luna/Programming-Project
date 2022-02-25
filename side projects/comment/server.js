// import dependencies
const express = require('express');
const app = express();

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

const cors = require('cors');
const res = require('express/lib/response');
app.use(cors());

app.use(express.static("comments"));

// create a local server
const port = 8000;
const server = app.listen(port, () => {
    console.log(`running on the localhost: ${port}`);
})

const data = [];

// add comments
app.post('/addComment', (req, res)=>{
    //const data = req.body;
    //console.log(data);
    /* const newEntry = {
        date: data.date,
        temp: data.temp,
        content: data.content
    } */

    data.push(req.body);
    //res.send(data);
})

// get all comments
app.get('/showData', (req, res)=>{
    res.send(data);
})


