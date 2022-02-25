const fetchLocation = async (position) => {

  const fetch = require('node-fetch')
  const dotenv = require('dotenv')
  dotenv.config();
  const apiURL = `http://api.geonames.org/searchJSON?q=${position}&maxRows=1&username=${process.env.GEONAMES_API_KEY}`

  const res = await fetch(apiURL)
  const data = await res.json()

  let newData = {
    "lng": await data.geonames[0].lng,
    "lat": await data.geonames[0].lat,
    "countryName": await data.geonames[0].countryName,
    "toponymName": await data.geonames[0].toponymName,
  }
  
  return newData
}

module.exports = fetchLocation
