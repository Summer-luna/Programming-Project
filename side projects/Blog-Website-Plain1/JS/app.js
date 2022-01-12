const navSlide = () => {

    // Get the elements
    const burger = document.querySelector('.hamburger');
    const navList = document.querySelector('.nav-list');
    const navItems = document.querySelectorAll('.nav-item');

    // Event Listener
    burger.addEventListener('click', ()=>{
        navList.classList.toggle('nav-active');

        //animate nav-items 
        navItems.forEach((item, index)=>{
            if(item.style.animation){
                item.style.animation = '';
            }else{
                item.style.animation = `navListFade 0.5s ease forwards ${index / 7 + 0.3}s`;
            }
        });

        // burger animation
        burger.classList.toggle('toggle');
    })

    

}

navSlide();