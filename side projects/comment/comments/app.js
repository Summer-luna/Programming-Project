const username = document.querySelector("#name");
const comment = document.querySelector("#comment");
const submit = document.querySelector("#submit");
const commentDisplayName = document.querySelector("#commentDisplayName");
const commentDisplayComment = document.querySelector("#commentDisplayComment");



const addComment = async (url = '', data = {}) => {
    const response = await fetch(url, {
        method:'POST',
        credentials:"same-origin",
        headers: {
            'Content-Type': 'application/json',
        },
        body:JSON.stringify(data), 
    });

    try{
        const newData = await response.json();
        return newData;
    }catch(error){
        console.log('error', error);
    }
}

submit.addEventListener('click', ()=>{
    addComment('/addComment', {name: username.value, content: comment.value});
    showComment('/showData');
});

const showComment = async (url='') =>{
    const request = await fetch(url);
    try{
        const newData = await request.json();
        const lists = document.createDocumentFragment();
        const list = document.createElement("li");
        
        newData.forEach(element => {
            list.textContent = element.name + ' ' + element.content;
            lists.appendChild(list);
        });
        
        commentDisplayName.appendChild(lists);

    }catch(error){
        console.log('error', error);
    }
}








