/**
 * 
 * Manipulating the DOM exercise.
 * Exercise programmatically builds navigation,
 * scrolls to anchors from navigation,
 * and highlights section in viewport upon scrolling.
 * 
 * Dependencies: None
 * 
 * JS Version: ES2015/ES6
 * 
 * JS Standard: ESlint
 * 
*/

/**
 * Comments should be present at the beginning of each procedure and class.
 * Great to have comments before crucial code sections within the procedure.
*/

/**
 * Define Global Variables
 * 
*/
const navbarList = document.querySelector('#navbar__list');
const sections = document.querySelectorAll('section');
const frame = document.createDocumentFragment();


// Scroll to anchor ID using scrollTO event

function smoothScroll(e){
    e.preventDefault();
    const targetId = e.target.getAttribute("href");
    window.scrollTo({
        top: document.querySelector(targetId).offsetTop,
        behavior: "smooth"
    })
}

// Build menu 
function createNav(){
    /* Loop sections to make sure every section will be add on the navbar */
    for (let i=0; i<sections.length; i++){
        /* create an element li */
        let myNavList = document.createElement('li');
        myNavList.classList.add("section" + parseInt(i+1))
        /* create an element a */
        let myNavItem = document.createElement('a');
        myNavItem.href = `#section${i+1}`;
        //myNavItem.classList.add("active");

        /* add content to element a */
        myNavItem.textContent = `Section ${i+1}`;
        myNavItem.style.cssText = "color: black; padding: 0 1em; text-decoration:none;";
        
        myNavList.appendChild(myNavItem); 
        frame.appendChild(myNavList);
    }

    navbarList.appendChild(frame);

    const myNavLists = document.querySelectorAll('li');

    // Set a smooth scroll
    myNavLists.forEach(list => {
        list.addEventListener('click', smoothScroll);
    });
    
    // Set sections as active
    window.addEventListener('scroll', () => {
        let current = '';
        /* To get the current section id */
        sections.forEach(section => {
            // get section top 
            const sectionTop = section.offsetTop;
            // get section height
            const sectionHeight = section.offsetHeight;
            // to get current id earlier than just get sectionTop. more user friendly
            if(scrollY >= (sectionTop - sectionHeight / 3)){
                current = section.getAttribute('id');
            }
            
        })

        /* If scrolled to a specific section, then add active css*/
        sections.forEach(section => {
            section.classList.remove("your-active-class");
            if(section.id == current){
                section.classList.add("your-active-class");
            }
        })

        // when scroll to a section, highlight the sectionbar on the navbar
        myNavLists.forEach(list => {
            list.classList.remove("active");
            if(list.classList.contains(current)){
                list.classList.add("active");
            }
        })
    })

    // back to top
    const arrow = document.querySelector("#up-arrow");
    arrow.addEventListener('click', ()=>{
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        })
    })
}


createNav();



