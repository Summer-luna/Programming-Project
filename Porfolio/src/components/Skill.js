import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTerminal } from '@fortawesome/free-solid-svg-icons'
import { faHtml5, faCss3, faJsSquare, faReact, faGitAlt, faGithub,faSass, faWordpress, faNode} from '@fortawesome/free-brands-svg-icons'
import responsive from '../img/responsive.svg'

const Skill = () => {
  return(
    <div className='' id="skill">
      {/* <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#829cbc" fill-opacity="1" d="M0,32L1440,160L1440,320L0,320Z"></path></svg> */}
      <div className='bg-blue'>
      <div className='container'>
        <h5 className='text-center text-montserrat text-white mb-4'>SKILLS & TOOLS</h5>
        <h1 className='text-center my-5 text-oxfordBlue'>My Toolbox & Things I Can Do</h1>
        <div className='row pt-5'>
          <div className='col'>
            <FontAwesomeIcon icon={faHtml5} style={{fontSize: "4rem", color: "white"}} />
            <p className='text-snow'>HTML5</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faCss3} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>CSS3</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faJsSquare} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>JavaScript</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faReact} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>React</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faNode} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>Node JS</p>
          </div>
          <div className='col'>
            <i class="devicon-mysql-plain" style={{fontSize: "4rem", color: "white"}}></i>
              <p className='text-snow'>MySQL</p>
          </div>
          <div className='col'>
            <i class="devicon-php-plain" style={{fontSize: "4rem", color: "white"}}></i>
            <p className='text-snow'>Node JS</p>
          </div>
          <div className='col'>
            <i class="devicon-bootstrap-plain" style={{fontSize: "4rem", color: "white"}}></i>
            <p className='text-snow'>Bootstrap</p>
          </div>
          <div className='col'>
            <i class="devicon-webpack-plain" style={{fontSize: "4rem", color: "white"}}></i>
            <p className='text-snow'>Webpack</p>
          </div>
          
          <div className='col'>
            <FontAwesomeIcon icon={faGitAlt} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>Git</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faGithub} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>Github</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faSass} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>Sass</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faTerminal} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>Command Line</p>
          </div>
          <div className='col'>
            <i className="devicon-visualstudio-plain" style={{fontSize: "4rem", color: "white"}} ></i>
              <p className='text-snow'>VS Code</p>
          </div>
          <div className='col'>
            <img src={responsive} style={{width: "4rem", color: "white"}}></img>
              <p className='text-snow'>Responsive Websites</p>
          </div>
          <div className='col'>
            <FontAwesomeIcon icon={faWordpress} style={{fontSize: "4rem", color: "white"}} />
              <p className='text-snow'>Wordpress</p>
          </div>
        </div>       
      </div>
      </div>
      {/* <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#829cbc" fill-opacity="1" d="M0,64L1440,160L1440,0L0,0Z"></path></svg> */}
    </div>
  )
}

export default Skill;