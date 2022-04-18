import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTerminal } from '@fortawesome/free-solid-svg-icons';
import { faHtml5, faCss3, faJsSquare, faReact, faGitAlt, faGithub,faSass, faWordpress, faNode} from '@fortawesome/free-brands-svg-icons';
import responsive from '../img/responsive.png';

const Skill = () => {
  return(
    <div className='skills' id="skills">
        <h2>SKILLS & TOOLS</h2>
        <div className='row'>
          <div className='col'>
            <FontAwesomeIcon icon={faHtml5} className="icon" />
            <p>HTML5</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faCss3} className="icon" />
              <p>CSS3</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faJsSquare} className="icon" />
              <p>JavaScript</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faReact} className="icon" />
              <p>React</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faNode} className="icon" />
              <p>Node JS</p>
          </div>
          <div className='col'>
            <i class="devicon-mysql-plain" style={{fontSize: "4rem"}}></i>
              <p>MySQL</p>
          </div>
          <div className='col'>
            <i class="devicon-php-plain" style={{fontSize: "4rem"}}></i>
            <p>PHP</p>
          </div>
          <div className='col'>
            <i class="devicon-bootstrap-plain" style={{fontSize: "4rem"}}></i>
            <p>Bootstrap</p>
          </div>
          <div className='col'>
            <i class="devicon-webpack-plain" style={{fontSize: "4rem"}}></i>
            <p>Webpack</p>
          </div>
          
          <div className='col'>
            <FontAwesomeIcon icon={faGitAlt} className="icon" />
              <p>Git</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faGithub} className="icon" />
              <p>Github</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faSass} className="icon" />
              <p>Sass</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faTerminal} className="icon" />
              <p>Command Line</p>
          </div>
          <div className='col'>
            <i className="devicon-visualstudio-plain" style={{fontSize: "4rem"}} ></i>
              <p>VS Code</p>
          </div>
          <div className='col'>
            <img src={responsive} style={{width: "4rem"}}></img>
              <p>Responsive Websites</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faWordpress} className="icon" />
              <p>Wordpress</p>
          </div>
          <div className='col'>
            <i class="devicon-python-plain"></i>
            <p>Python</p>
          </div>
        </div>       
    </div>
  )
}

export default Skill;