import axios from 'axios';
import React, {useState, useEffect} from 'react';

const Search = () => {
  // set default search text
  const [text, setText] = useState('programming');
  const [debuncedText, setDebuncedText] = useState(text);
  const [results, setResults] = useState([]);
  //console.log(results);

  // if text changed, we will run follow function
  useEffect(()=>{
    // set a timer to search in 500ms
    const timeoutId = setTimeout(()=>{
      if(text){
        setDebuncedText(text);
      }
    }, 1000)

    // once user change the text, cancle the previous timer
    return () => {
      clearTimeout(timeoutId);
    }
  }, [text])

  // if debuncedText changed, we will run folow code
  useEffect(()=>{
    const search = async () => {
      const {data} = await axios.get('https://en.wikipedia.org/w/api.php',{
        params: {
          action: 'query',
          list: 'search',
          format: 'json',
          origin: '*',
          srsearch: debuncedText
        }, 
      });
      setResults(data.query.search);
    };
    search();
  }, [debuncedText])

  const renderedResults = results.map((result) => {
    return(
      <div className='card' key={result.pageid}>
        <div className='card-body'>
          <h5 className='card-title'>{result.title}</h5>
          <span dangerouslySetInnerHTML={{__html: result.snippet}}></span>
        </div>
        <div className='text-end'>
          <a href={`http://en.wikipedia.org?curid=${result.pageid}`} className='btn btn-primary'>Go</a>
        </div>
      </div>
    )
  })

  return(
    <div className='container'>
      <form>
        <label className='form-label'>Search Here</label>
        <input 
              className='form-control' 
              type="text" 
              value = {text}
              onChange={(e)=>{setText(e.target.value)}} />
      </form>
      <div>{renderedResults}</div>
    </div>

  )
}

export default Search;