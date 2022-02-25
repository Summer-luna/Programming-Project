const error_msg = document.createElement('div');

// check if user inputs are empty
function checkForName() { 
    const name = document.querySelector('#location');
    const form = document.querySelector('.form');
    if(name.value == "" || name.value == null) {
        error_msg.textContent = "Please Enter Location:";
        error_msg.style.color = "red";
        form.insertBefore(error_msg, name);
    }else{
        error_msg.textContent = "";
        form.insertBefore(error_msg, name);
    }
    
}

export { checkForName }
