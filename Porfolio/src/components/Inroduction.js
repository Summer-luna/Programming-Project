import React from "react";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEnvelope } from '@fortawesome/free-solid-svg-icons';
import { faLinkedin, faGithub } from '@fortawesome/free-brands-svg-icons';
import avatar from '../img/avatar.png';
import resume from '../Resume.pdf';

const Introduction = () => {
  return(
      <div className="home" id="home">
        <div className="intro">
          {/* avatar image */}
          <img src={avatar} alt="" className="avatar"/>
          {/* info */}
          <h1>Xinyue Chen</h1>
          <span>I'm a <span>Front-End developer</span></span>
          {/* social icon */}
          <ul className="social-icons">
            <li>
              <a href=""><FontAwesomeIcon icon={faLinkedin} className="linkedin" /></a>
            </li>
            <li>
              <a href=""><FontAwesomeIcon icon={faEnvelope} className="linkedin" /></a>
            </li>
            <li>
              <a href=""><FontAwesomeIcon icon={faGithub} className="linkedin" /></a>
            </li>
          </ul>
          {/* Button */}
          <div>
            <a href={resume} className="btn btn-default" target="_blank">Download Resume</a>
          </div>
          {/* scroll down mouse wheel */}
          <div className="scroll-down">
            <a href="mouse-wrapper">
              <span>Scroll Down</span>
              <span className="mouse">
                <span className="wheel"></span>
              </span>
            </a>
          </div>
        </div>
      </div>
  )
}

export default Introduction