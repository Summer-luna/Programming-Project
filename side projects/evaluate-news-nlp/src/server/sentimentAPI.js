const fetchSentiment = async (url) => {

  const fetch = require('node-fetch')
  const FormData = require('form-data')
  const formData = new FormData();
  const baseURL = "https://api.meaningcloud.com/sentiment-2.1"
  // configure the environment variables
  const dotenv = require('dotenv')
  dotenv.config();
  
  formData.append("key", process.env.API_KEY)
  formData.append("url", url)
  formData.append("lang", "en")
  
  const requestOptions = {
    method: 'POST',
    body: formData,
    redirect: 'follow',
  }

  const res = await fetch(baseURL,requestOptions)
  const data = await res.json();

  let newData = {
    "score_tag": await data.score_tag,
    "agreement": await data.agreement,
    "subjectivity": await data.subjectivity,
    "confidence": await data.confidence,
    "irony": await data.irony
  }
  return newData
}

module.exports = fetchSentiment

//console.log(module);