var path = require('path')
const express = require('express')
const fetchSentiment = require('./sentimentAPI')
const cors = require('cors')
const bodyParser = require('body-parser')

const app = express()

app.use(cors())
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

app.use(express.static('dist'))

//console.log(__dirname)

app.get('/', function (req, res) {
    res.sendFile(path.resolve('dist/index.html'))
})

// designates what port the app will listen to for incoming requests
app.listen(8081, function () {
    console.log('Example app listening on port 8081!')
})

// route to allow client to send url to server
let projectData = {}

app.post('/getUrl', (req,res)=>{
    //console.log(req.body);
    const newEntry = {
        url: req.body.u
    }
    
    projectData = newEntry

    const a = fetchSentiment(projectData.url)
    .then((a)=>{
        res.send(a)
    })
})

// Method 1
/* const x = async () => {
    const a = await fetchSentiment()
    app.get('/sentiment', function(req, res){
        res.send(a)
    })
} 
x() */
// can not use self-invok in this method



 

