var path = require('path')
const express = require('express')
const fetchLocation = require('./locationAPI')
const fetchCurrentAPI = require('./cWeatherAPI')
const fetchPixabayAPI = require('./pixabayAPI')
const cors = require('cors')
const bodyParser = require('body-parser')

const app = express()

app.use(cors())
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

app.use(express.static('dist'))

app.get('/', function (req, res) {
    res.sendFile(path.resolve('dist/index.html'))
})

// designates what port the app will listen to for incoming requests
app.listen(8081, function () {
    console.log('Example app listening on port 8081!')
})

// route to allow client to send url to server
let projectData = {}

app.post('/getPosition', async (req,res)=>{
    const newEntry = {
        position: req.body.p,
        date: req.body.date
    }

    projectData = newEntry

    // fetch coordination info from Geonames
    const a = await fetchLocation(projectData.position)
    // fetch weather info from Weatherbit using arguments that get from Geonames API
    const b = await fetchCurrentAPI(a.lng, a.lat, projectData.date)
    // passing user input(position) to fetch img info from Pixabay
    const c = await fetchPixabayAPI(projectData.position)

    // store all data that will display on the screen
    const newData = {
        countryName: a.countryName,
        toponymName: a.toponymName,
        lowTemp: b.lowTemp,
        highTemp: b.highTemp,
        img: c,
        weatherDescription: b.weatherDescription
    }
    //send back to client side
    res.send(newData)
    
})



 

