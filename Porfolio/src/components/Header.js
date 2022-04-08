import React from "react";

const Header = () => {
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
            <ul className="nav-list">
              <li className="nav-item">
                <a className="nav-link active-link" href="#">Home</a>
              </li>
              <li>
                <a className="nav-link" href="#skill">Skills</a>
              </li>
              <li>
                <a className="nav-link" href="#project">Projects</a>
              </li>
              <li>
                <a className="nav-link" href="#Aboutme">About me</a>
              </li>
              <li>
                <a className="nav-link" href="#contact">Contact</a>
              </li>
              <li>
                <a className="nav-link" href="#blog">Blog</a>
              </li>
            </ul>
          </div>
          <div className="nav-btn">
            {/* toggle button */}
            <div className="nav-toggle nav-lines">
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