import React from "react";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faUserAstronaut } from '@fortawesome/free-solid-svg-icons';
import { faLinkedin } from '@fortawesome/free-brands-svg-icons';

const Introduction = () => {
  return(
      <div className="home">
        <div className="intro">
        {/* avatar image */}
        <FontAwesomeIcon icon={faUserAstronaut} className="avatar" />
        {/* info */}
        <h1>Xinyue Chen</h1>
        <span>I'm a <span>Front-End developer</span></span>
        {/* social icon */}
        <ul className="social-icons">
          <li><a href=""><FontAwesomeIcon icon={faLinkedin} /></a></li>
        </ul>
        <div>
          <a href="" className="btn btn-default">Download Resume</a>
        </div>
      </div>
      </div>
  )
}

export default Introduction