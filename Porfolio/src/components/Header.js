import React from "react";

const Header = () => {
  return(
    <div className="navbar navbar-expand-md navbar-light">
      <div className="container">
        {/* logo */}
        <a className="navbar-brand" href="#">
          <i className="bi bi-moon-stars"></i>
        </a>
        {/* collapse button */}
        <button className="navbar-toggler d-flex d-md-none justify-content-around collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span className="toggler-icon top-bar"></span>
          <span className="toggler-icon middle-bar"></span>
          <span className="toggler-icon bottom-bar"></span>
        </button>
        {/* Collapsed content */}
        <div className="collapse navbar-collapse" id="navbarNav">
          <ul className="navbar-nav ms-md-auto">
            <li className="nav-item mx-3">
              <a className="nav-link" aria-current="page" href="#">Home</a>
            </li>
            <li className="nav-item mx-3">
              <a className="nav-link" href="#skill">Skills</a>
            </li>
            <li className="nav-item mx-3">
              <a className="nav-link" href="#project">Projects</a>
            </li>
            <li className="nav-item mx-3">
              <a className="nav-link" href="#Aboutme">About me</a>
            </li>
            <li className="nav-item mx-3">
              <a className="nav-link">Contact</a>
            </li>
            <li className="nav-item mx-3">
              <a className="nav-link disabled">Blog</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  )
}

export default Header