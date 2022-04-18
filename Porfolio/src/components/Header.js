import React, {useRef} from "react";

const Header = () => {
  
  const buttonRef = useRef(null);
  const navlistRef = useRef(null);
  

  const onClickNav = (e) => {
    const navLink = document.querySelectorAll(".nav-link");
    const targetElement = e.target;

    if(targetElement.classList.contains("nav-link")){
      /* Loop through all .nav-links to find if contains class called active-link */
      navLink.forEach(link => {
        /* If so, remove it */
        if(link.classList.contains("active-link")){
          link.classList.remove("active-link");
        }
      });
  
      targetElement.classList.add("active-link");
    }
  }
  
  /* 
   * click menu button
   * change button shape to X by toggle nav-toggle class
   * show nav-list by toggle active-navlist
  */
 
  const onClickMenu = () =>{
    buttonRef.current.classList.toggle("nav-toggle");
    navlistRef.current.classList.toggle("active-navlist");
  }


  return(
    <>
      <header className="header">
        <div className="nav container px-15">
          {/* nav logo */}
          <a href="#">
            <i className="bi bi-moon-stars"></i>
          </a>
          {/* nav menu*/}
          <div className="nav-menu">
            {/* nav list */}
            <ul className="nav-list" onClick={ onClickNav } ref={navlistRef}>
              <li className="nav-item">
                <a className="nav-link active-link" href="#home">Home</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#skills">Skills</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#projects">Projects</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#Aboutme">About me</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#contact">Contact</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" href="#blog">Blog</a>
              </li>
            </ul>
          </div>
          <div className="nav-btn" onClick={onClickMenu} ref= {buttonRef} >
            {/* toggle button */}
            <div className="nav-lines">
              <div className="nav-line1"></div>
              <div className="nav-line2"></div>
              <div className="nav-line3"></div>
            </div>
          </div>
        </div>
      </header>
    </>
  )
}

export default Header