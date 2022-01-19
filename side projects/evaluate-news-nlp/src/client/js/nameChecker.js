const error_msg = document.createElement('div');

function checkForName() {
    const name = document.querySelector('#name');
    const form = document.querySelector('.form');
    if(name.value == "" || name.value == null) {
        error_msg.textContent = "Please Enter URL";
        error_msg.style.color = "red";
        form.insertBefore(error_msg, name);
    }else{
        error_msg.textContent = "";
        form.insertBefore(error_msg, name);
    }
    
}

export { checkForName }
