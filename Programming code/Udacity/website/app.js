const postData = async(url='', data = {}) =>{
    console.log(data);
    const response = await fetch(url, {
        method: 'POST',  // POST, GET, PUT, DELETE, etc
        credentials: 'same-origin', 
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data), // body data type must match "Content-Type" header
    });

    try{
        const newData = await response.json();
        console.log(newData);
        return newData;
    }catch(error){
        console.log("error", error);
    }
}

postData('/add', {movie: 'the matrix', score: 5});
postData('/add', {movie: 'Pitch Perfect', score: 5});
