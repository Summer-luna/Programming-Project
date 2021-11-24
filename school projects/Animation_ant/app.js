// Get elements
const mycanvas = document.querySelector("#myCanvas");

// Add event listener
//window.addEventListener('load',create_ants);
window.addEventListener('load',generatemore);
window.addEventListener('mousedown',checkhit);



//functions
let antcounter = 0;
let killedcounter = 0;

function generatemore(whichant){
    let score = document.createElement("span");
    score.style.position = "absolute";
    score.style.left = "300px";
    score.id = "score";
    score.textContent = "Ants killed: 0"
    let x = 0;
    mycanvas.appendChild(score);
    create_table();
    let difficulty = 1;
    let generatecounter = 0;
    let difficultycounter = 0;
    let everygenerator = setInterval(generateants,1);
    function generateants(){
        generatecounter++;
        difficultycounter++;
        if(generatecounter>=(1000/difficulty)){
            create_ants(antcounter);
            antcounter++;
            generatecounter=0;
        }
        if(difficultycounter == 1000){
            difficulty++;
            difficultycounter = 0;
        }
        if(document.querySelector("#gameover_msg") != null){
            clearInterval(everygenerator);
        }
    }
}
// Create two tables
function create_table(){
    let mytable1 = document.createElement("img");
    mytable1.id="table1";
    mytable1.src="src/picnictable.png";
    mytable1.style.position = "absolute";
    mytable1.style.left = "0px";
    mytable1.style.top = "500px";
    mycanvas.appendChild(mytable1);

    let mytable2 = document.createElement("img");
    mytable2.id="table2";
    mytable2.src="src/picnictable.png";
    mytable2.style.position = "absolute";
    mytable2.style.left = "240px";
    mytable2.style.top = "500px";
    mycanvas.appendChild(mytable2);
}

// Create an new ant
function create_ants(whichant){

    // hidden field to store x pos
    var myhidden = document.createElement("input");
    myhidden.type = "hidden";
    myhidden.name = "xcoord" + whichant;
    myhidden.id = "xcoord" + whichant;
    myhidden.value = Math.floor(Math.random()*380);
    myhidden.classList.add("ants");
    mycanvas.appendChild(myhidden);

    // hidden field to store ant y pos
    var myhidden = document.createElement("input");
    myhidden.type = "hidden";
    myhidden.name = "ycoord" + whichant;
    myhidden.id = "ycoord" + whichant;
    myhidden.value = "0";
    mycanvas.appendChild(myhidden);

    //ants_wiggling();
    // create ant img
    var myant = document.createElement("img");
    myant.id = "ant" + whichant;
    myant.src = "src/ant0.png";
    myant.style.position = "absolute";
    myant.style.height = "30px";
    myant.style.left = document.querySelector("#xcoord" + whichant).value + "px";  
    myant.style.top = document.querySelector("#ycoord" + whichant).value + "px";  
    mycanvas.appendChild(myant);
    ants_wiggling(whichant);
    ants_move(whichant);
}

// wiggling ant
function ants_wiggling(whichant){
    //document.querySelector("#ant" + whichant)
    let i = 0;
    let x = 0;
    let id = setInterval(ant_run, 100);
    function ant_run(){
        if(document.querySelector("#ycoord" + whichant).value == "470"){
            clearInterval(id);
        }else{
            document.querySelector("#ant" + whichant).src = "src/ant" + i + ".png";
            i++
            if(i == 4){
                i = 0;
            }
        } 
        if(document.querySelector("#gameover_msg") != null){
            clearInterval(id);
        }
        // if ant has been clicked
        
        if(document.querySelector("#ant" + whichant).value == 0){
            document.querySelector("#ant" + whichant).src = "src/deadant.png";
            x++;
            console.log(x);
            clearInterval(id);
        }
    }
    
}

// Make wiggling ant move down to the botton of canvas
function ants_move(whichant){
    let ypos = 0;
    let id = setInterval(frame,70);
    function frame(){
        let deadAntCounter = 0;
        if(ypos == 470){
            // play the eating sound when ant reach the bottom of the canvas and stop animation
            let gameover_audio = document.createElement("audio");
            let gameover_src = document.createElement("source");
            gameover_src.src = "src/eating.mp3";
            gameover_audio.appendChild(gameover_src);
            mycanvas.appendChild(gameover_audio);
            gameover_audio.play();
            run_msg();
        }else{
            ypos = parseInt(document.querySelector("#ycoord" + whichant).value);
            ypos += 5;
            document.querySelector("#ant" + whichant).style.top = ypos + "px";
            document.querySelector("#ycoord" + whichant).value = ypos;
        }

        if(document.querySelector("#gameover_msg") != null){
            clearInterval(id);
        }
        if(document.querySelector("#ant" + whichant).value == 0){
            killedcounter++
            score.textContent = "Ants killed: " + killedcounter;
            clearInterval(id);
            
        }
    } 

    
}

function run_msg(){

    let sign_msg = document.createElement("span");
    sign_msg.id = "gameover_msg";
    sign_msg.textContent = "Game Over";
    sign_msg.style.fontSize = "14px";
    sign_msg.style.position = "absolute";
    sign_msg.style.left = "100px";
    sign_msg.style.top = "200px";
    sign_msg.style.color = "red";
    let mysize = 14;
    let bigwords = setInterval(makewordsbig,20);
    function makewordsbig(){
        mysize++;
        sign_msg.style.fontSize = mysize + "px";
        //console.log(sign_msg.style.fontSize);
        if(mysize == 44){
            //sign_msg.textContent = "";
            clearInterval(bigwords);
        }
    }
    mycanvas.appendChild(sign_msg);
}

function checkhit(e){
    let myxpos = e.clientX;
    let myypos = e.clientY;
    let noant = false;
    let x = 0;
    //let deadCounter = 0;
    while(x < antcounter && !noant){
        if(parseInt(document.querySelector("#xcoord" + x).value) <= myxpos &&
           parseInt(document.querySelector("#xcoord" + x).value) + 40 >= myxpos &&
           parseInt(document.querySelector("#ycoord" + x).value) <= myypos &&
           parseInt(document.querySelector("#ycoord" + x).value) + 40 >= myypos){
            noant = true;
            // play squish sound
            let mysound = document.createElement("audio");
            let mysource = document.createElement("source");
            mysource.src = "src/squish.mp3";
            mysound.appendChild(mysource);
            mycanvas.appendChild(mysound);
            mysound.play();
            setTimeout(()=>{mycanvas.removeChild(mysound);}, 5000);
            // if ant has been clicked, pass a value to that ant
            document.querySelector("#ant" + x).value = 0;
            
        }else{
            x++;
        }
    }
}

/* function killedAnts(whichant){
    for(x in document.querySelector(".ants")){
        console.log(x);
    }
} */