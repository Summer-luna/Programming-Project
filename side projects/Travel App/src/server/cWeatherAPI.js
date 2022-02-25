const fetchCurrentWeather = async (lng,lat, date) => {
  const fetch = require('node-fetch');
  const dotenv = require('dotenv')
  dotenv.config()
  const apiURL = `https://api.weatherbit.io/v2.0/forecast/daily?lat=${lat}&lon=${lng}&key=${process.env.WEATHERBIT_API_KEY}`

  const res = await fetch(apiURL)
  const data = await res.json()

  // when api date equals date that user input, return their low tmp, high tmp, and weather description
  for(x of data.data){
    if(x.datetime == date){
      let newData = {
        "lowTemp": await x.low_temp,
        "highTemp": await x.high_temp,
        "weatherDescription": await x.weather.description
      }
      return newData
    }
  }
}

module.exports = fetchCurrentWeather