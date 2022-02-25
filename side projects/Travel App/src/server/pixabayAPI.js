const fetchPixabayAPI = async (text)=>{
  const fetch = require('node-fetch')
  const dotenv = require('dotenv')
  dotenv.config()
  const apiURL = `https://pixabay.com/api/?key=${process.env.PIXABAY_API_KEY}&q=${text}&image_type=photo`

  const res = await fetch(apiURL)
  const data = await res.json()
  const imgUrl = await data.hits[0].largeImageURL
  return imgUrl
}

module.exports = fetchPixabayAPI