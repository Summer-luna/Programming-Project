//Get element
let first_number = document.querySelector('#firstNumber');
let second_number = document.querySelector('#secondNumber');
let buttons = document.querySelectorAll('button');
let display = document.querySelector('#display');
let previous_btn = document.querySelector('#previousBtn');

//Event listener
first_number.addEventListener('blur', previousbtn);
first_number.addEventListener('blur', validateInput);

second_number.addEventListener('blur', previousbtn);
second_number.addEventListener('blur', validateInput);

buttons[0].addEventListener('click', add);
buttons[1].addEventListener('click', subtract);
buttons[2].addEventListener('click', multiply);
buttons[3].addEventListener('click', divide);


//Validate the input
function validateInput(){
    
    if(first_number.value != "" && second_number.value != ""){
        //make all buttons diabled
        for(let x of buttons){
            x.disabled = false;
        }
        if(second_number.value == 0 || parseInt(second_number.value) != second_number.value || parseInt(first_number.value) != first_number.value){
            buttons[3].disabled = true;
        }
    }else{
        for(let x of buttons){
            x.disabled = true;
        }
        display.textContent = "";
    }
}

//check if previous button clicked
function previousbtn(){
    if((previous_btn.value) == "add"){
        add();
    }
    if((previous_btn.value) == "subtract"){
        subtract();
    }
    if((previous_btn.value) == "multiply"){
        multiply();
    }
    if((previous_btn.value) == "divide"){
        divide();
    }
}

function add(){
    let sum = Number(first_number.value) + Number(second_number.value);
    display.textContent = 'Adding ' + second_number.value + ' to ' + first_number.value + ' results in ' + sum;
    previous_btn.value = "add";
}

//Subtract
function subtract(){
    let sub = Number(first_number.value) - Number(second_number.value);
    display.textContent = 'Subtracting ' + second_number.value + ' from ' + first_number.value + ' results in ' + sub;
    previous_btn.value = "subtract";
}

//Multiply
function multiply(){
    let mul = Number(first_number.value) * Number(second_number.value);
    display.textContent = 'Multiplying ' + first_number.value + ' with ' + second_number.value + ' results in ' + mul;
    previous_btn.value = "multiply";
}

//Divide
function divide(){

    let div = Number(first_number.value) / Number(second_number.value);
    let rem = Number(first_number.value) % Number(second_number.value);

    if(second_number.value == 0 || parseInt(second_number.value) != second_number.value || parseInt(first_number.value) != first_number.value){
        display.textContent = "";
    }else{
        display.textContent = 'Dividing ' + first_number.value + ' by ' + second_number.value + ' results in ' + parseInt(div) + 'R' + rem;
    }
    previous_btn.value = "divide";
}













