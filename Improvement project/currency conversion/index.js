// get elements
const other_currency = document.querySelector('#other_currency');
const amount = document.querySelector('#amount');
const errormsg1 = document.querySelector('#errormsg1');
const errormsg2 = document.querySelector('#errormsg2');
const radioUSD = document.querySelectorAll('input[name="usd"]');
const displayCode = document.querySelector('#displayCode');
const resultDisplay = document.querySelector('#result');
const input = document.querySelector('#filter')

// Event listener
window.addEventListener('load', errorMessage);
other_currency.addEventListener('change', errorMessage);
other_currency.addEventListener('change', ifUSD);
amount.addEventListener('blur',errorMessage);
amount.addEventListener('blur',ifUSD);
input.addEventListener('keyup',inputFilter);

radioUSD[0].addEventListener('click',ifUSD);
radioUSD[1].addEventListener('click',ifUSD);

//show error messsage
function errorMessage(){
    if(other_currency.value == "0" || other_currency.value == null){
        errormsg1.textContent = "Please select a currency type!";
        errormsg1.style.color = "red";
        //resultDisplay.textContent = "";
    }else{
        errormsg1.textContent = "";
    }
    
    if(amount.value == "" || other_currency.value == null){
        errormsg2.textContent = "Please enter an amount of money!";
        errormsg2.style.color = "red";
        //resultDisplay.textContent = "";
    }else{
        errormsg2.textContent = "";
    }
    
}


function ifUSD(){
    //check which radio has been selected
    let selectedValue;
    for(const item of radioUSD){
        if(item.checked){
            selectedValue = item.value;
            break;
        }
    }
    // if click from usd, show usd
    if(selectedValue == "1"){
        displayCode.textContent = "USD";
        
        // calculate from usd to other currency
        if(amount.value != "" && amount.value != null && other_currency.value != "0" && other_currency.value != null){
            if(amount.value <=0 ){
                errormsg2.textContent = "Please enter positive number!";
                errormsg2.style.color = "red";
                resultDisplay.textContent = "";
            }else{
                let result = amount.value * getCurrencyRate();
                resultDisplay.textContent =  getCurrencyCode() + ' '+ result.toFixed(2);
            }
            
        }else{
            resultDisplay.textContent = "";
        }
    }else{
        // else get currency code by called getcurrencyCode() function
        displayCode.textContent = getCurrencyCode();
        
        // calculate from other currency to usd
        if(amount.value != "" && amount.value != null && other_currency.value != "0" && other_currency.value != null){
            if(amount.value <=0 ){
                errormsg2.textContent = "Please enter positive number!";
                errormsg2.style.color = "red";
                resultDisplay.textContent = "";
            }else{
                let result = amount.value / getCurrencyRate();
                resultDisplay.textContent = "USD " + result.toFixed(2);
            }
        }else{
            resultDisplay.textContent = "";
        }
    }
}

//get currency code
function getCurrencyCode(){
    let selectedValue = other_currency.value; //get selected value
    let index = currencyName.indexOf(selectedValue); //get index of selected value in currencyName 
    let currencycode = currencyCode[index]; //get the currencycode through the index
    return currencycode;
}

//get currency rate, same as getCurrencyCode() function
function getCurrencyRate(){
    let selectedValue = other_currency.value;
    let index = currencyName.indexOf(selectedValue);
    let currencyrate = currencyRate[index];
    return currencyrate;
}

function inputFilter(){
    // uppsercase all input
    let filter = input.value.toUpperCase();
    //get all other currency option element
    const allCurrencyName = document.querySelectorAll('option');

    for(let i=0; i< allCurrencyName.length; i++){
        
        let currencyContent = allCurrencyName[i].textContent;
        //check if each currency name contain input, and check they index if greater than -1
        if(currencyContent.toUpperCase().search(filter)>-1){
            allCurrencyName[i].style.display = "";
        }
        else{
            allCurrencyName[i].style.display = "none";
        }
    }
}


