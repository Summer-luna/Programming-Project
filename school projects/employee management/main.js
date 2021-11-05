// get elements
const empid = document.querySelector('#EmpId');
const errormsg1 = document.querySelector('#error');
const empname = document.querySelector('#newEmpName');
const add = document.querySelector('#add');
const nameSearch = document.querySelector('#EmpName');
const pwd = document.querySelector('#pwd');
const administrator = document.querySelector('#administrator');
const worker = document.querySelector('#worker');
const cancel = document.querySelector('#cancel');
const errormsg2 = document.querySelector('#error2');
const id = document.querySelector('#id');
const selectors = document.querySelector('#selectors');
const errormsg3 = document.querySelector('#error3');
const errormsg4 = document.querySelector('#error4');
const save = document.querySelector('#save');
const radios = document.querySelectorAll('input[name="empType"]');
const id_hidden = document.querySelector('#id_hidden');
// event listenner
empid.addEventListener('blur', ()=>{
    if(empid.value != "" && empid.value != null){
        var ourRequest = new XMLHttpRequest();
        ourRequest.open('GET','data.php?q=' + empid.value, true);

        ourRequest.onload = function(){
            // if find matched data
            if(ourRequest.responseText != ""){
                var ourData = JSON.parse(ourRequest.responseText);
                //show employee info
                id.textContent = ourData.empid;
                id_hidden.value = ourData.empid;
                empname.value = ourData.empname;
                if (ourData.emptypecode == 'A'){
                    administrator.checked = true;
                }else{
                    worker.checked = true;
                }
                // clean error msg
                errormsg1.textContent = "";
                empid.value = "";
                disabled_search();
                abled_entry();
                validation();
            }
            else{
                errormsg1.textContent = "Employee matching employee ID "+ empid.value +" not found!";
                errormsg1.style.color = "red";
            }
        }
        ourRequest.send();
    }
    else{
        errormsg1.textContent = "";
    }
    
})

//pwd.addEventListener('blur', pwd_msg);
// do name search
nameSearch.addEventListener('blur', ()=>{
    if(nameSearch.value != "" && nameSearch.value != null){
        var ourRequest = new XMLHttpRequest();
        ourRequest.open('GET','name.php?q=' + nameSearch.value,true);
        ourRequest.onload = function(){     
            var ourData = JSON.parse(ourRequest.responseText);
            // if get more that one employees
            if(ourData.length > 1){
                nameSearch.type = "hidden";
                var select = document.createElement('select');
                select.classList.add("selector");
                var select_name = document.createElement('option');
                select_name.textContent = "-Please select which employee-";
                select.appendChild(select_name);
                // add option to select element based on ourData length
                for(let i=0; i < ourData.length; i++){
                    let option = document.createElement('option');
                    option.textContent = ourData[i].empname;
                    select.appendChild(option);
                }
                selectors.appendChild(select);
                // disable other elements
                empid.disabled = true;
                add.disabled = true;
                select.addEventListener('change',()=>{
                    for(let i=0; i < ourData.length; i++){    
                        if(select.value.toUpperCase() == ourData[i].empname.toUpperCase()){
                            id.textContent = ourData[i].empid;
                            id_hidden.value = ourData[i].empid;
                            empname.value = ourData[i].empname;
                            if (ourData[i].emptypecode == 'A'){
                                administrator.checked = true;
                            }else{
                                worker.checked = true;
                            }
                            document.querySelector('.selector').remove();
                            nameSearch.type = "input";
                            nameSearch.disabled = true;
                            nameSearch.value = "";
                        }
                        //abled_entry();
                    }
                    // if click please select which employee
                    if(select.options[0].selected){
                        disabled_entry();
                        id.textContent = "";
                        id_hidden.value = "";
                        empname.value = "";
                        errormsg2.textContent = "";
                    }else{
                        abled_entry();
                    }
                    validation();
                });
                errormsg1.textContent = "";
                // if get only one employee
            }else if(ourData.length == 1){
                //nameSearch.value = ourData[0].empname;
                console.log(ourData[0]);
                id.textContent = ourData[0].empid;
                id_hidden.value = ourData[0].empid;
                empname.value = ourData[0].empname;
                if(ourData[0].emptypecode == 'A'){
                    administrator.checked = true;
                }else{
                    worker.checked = true;
                }
                nameSearch.value = "";
                abled_entry();
                disabled_search();
                validation();
            // if no employee matched
            }else{ 
                errormsg1.textContent = "No employees match the name Count Chokula";
                errormsg1.style.color = "red";
            }
        }
        ourRequest.send();
    }
    else{
        errormsg1.textContent = "";
        /* id.value = "";
        empname.value = "";
        administrator.checked = false;
        worker.checked = false; */
    }
    
})

add.addEventListener('click', ()=>{
    disabled_search();
    abled_entry();
    empname.placeholder = "-enter employee name here-";
    validation();
    id.textContent = "(system generated)";
    id_hidden.value = "(system generated)";

})

/* save.addEventListener('click', ()=>{
    //console.log(id_hidden.value);
    var ourRequest = new XMLHttpRequest();
    ourRequest.open('GET','edit.php?b=' + id_hidden.value,true); 

    ourRequest.send();
    //'&n='+ empname.value+'&p='+ radios[i].checked.value
})  */

empname.addEventListener('blur', validation);
pwd.addEventListener('blur', validation);
for(let i=0; i<radios.length; i++){
    radios[i].addEventListener('click', validation);
}
//empname.addEventListener('blur', name_valid);
//empname.addEventListener('blur', save_able);
//pwd.addEventListener('blur',save_able);
//administrator.addEventListener('click', administrator_valid);
//administrator.addEventListener('click', save_able);
//worker.addEventListener('click', worker_valid);
//worker.addEventListener('click', save_able);

function validation(){
    if(empname.value == "" || empname.value == null){
        errormsg3.textContent = "Please enter an employee name";
        errormsg3.style.color = "red";
    }else{
        errormsg3.textContent = "";
    }

    if(administrator.checked){
        errormsg4.textContent = "";
    }else if(worker.checked){
        errormsg4.textContent = "";
    }else{
        errormsg4.textContent = "Please enter an employee type";
        errormsg4.style.color = "red";
    }

    if(pwd.value == "" || pwd.value == null){
        errormsg2.textContent = "Please enter a password";
        errormsg2.style.color = "red";
    }else{
        errormsg2.textContent = "";
    }
    
    if(empname.value != "" && empname.value != null && pwd.value != "" && pwd.value != null){

        for (let i=0; i < radios.length; i++){
            if(radios[i].checked){
                save.disabled = false;
            }
        }
    }else{
        save.disabled = true;
    } 
}

cancel.addEventListener('click', ()=>{
    disabled_entry();
    abled_search();
    empid.value = "";
    nameSearch.value = "";
    id.textContent = "";
    id_hidden.value = "";
    empname.value = "";
    pwd.value = "";
    nameSearch.type = "input";
    if(document.querySelector('.selector') != null){
        document.querySelector('.selector').remove();
    }
    empname.textContent = "";
    empname.placeholder = "";
    errormsg3.textContent = "";
    errormsg2.textContent = "";
    errormsg4.textContent = "";
    administrator.checked = false;
    worker.checked = false;
})

/* function pwd_msg(){
    if(pwd.value == "" || pwd.value == null){
        errormsg2.textContent = "Please enter a password";
        errormsg2.style.color = "red";
    }else{
        errormsg2.textContent = "";
    }
} */

function disabled_search(){
    empid.disabled = true;
    add.disabled = true;
    nameSearch.disabled = true;
}

function abled_search(){
    empid.disabled = false;
    nameSearch.disabled = false;
    add.disabled = false;
}

function disabled_entry(){
    empname.disabled = true;
    pwd.disabled = true;
    administrator.disabled = true;
    worker.disabled = true;
    cancel.disabled = true;
}

function abled_entry(){
    empname.disabled = false;
    pwd.disabled = false;
    administrator.disabled = false;
    worker.disabled = false;
    cancel.disabled = false;
}
