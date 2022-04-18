import React from "react";
import avatar from '../img/avatar.png'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCalendarDays } from '@fortawesome/free-solid-svg-icons';
import resume from '../Resume.pdf';

const Aboutme = () => {
  return(
    <div className="aboutme" id="Aboutme">
          <h2 className="text-center mb-5">About Me</h2>
          <div className="aboutme-intro">
            <img src={avatar} alt="" className="avatar"/>
            <p>Hi, I'm Xinyue Chen, a front-end developer. I also love doing back-end development. I'm passion to learn new technology in my free time. Currently studying in <a className="school-link" href="https://www.mst.edu/">Missouri University of Science and Technology</a> as a graduate student. I've been building stuff on web since my college. I've made many side projects and I'm also be able to use React to build delightful user interfaces. <br /><a href={resume} className="btn btn-default" target="_blank">Download Resume</a></p>      
          </div>
          
          {/* Education Timeline */}
          <div className="timeline-container">
            <div className="timeline">
              <ul>
                <li>
                  <div className="timeline-content">
                    <p><FontAwesomeIcon icon={faCalendarDays} className="mini-calendar" />February 2016 - May 2023</p>
                    <h3>B.S. Information Technology in Liberty University</h3>
                    <h4>GPA: 3.54 / 4.00</h4>         
                  </div>
                </li>
                <li>
                  <div className="timeline-content">
                    <p><FontAwesomeIcon icon={faCalendarDays} className="mini-calendar" />May 2021 - May 2023</p>
                    <h3>M.S. Information Technology in Missouri University of Science and Technology</h3>
                    <h4>GPA: 4.00 / 4.00</h4>
                  </div>
                </li>
                <li>
                  <div className="timeline-content">
                    <p><FontAwesomeIcon icon={faCalendarDays} className="mini-calendar" />November 2021 - February 2022</p>
                    <h3>Front End Web Developer Nanodegree in Udacity</h3>
                  </div>
                </li>
              </ul>
            </div>
          </div>
    </div>
  )
}

export default Aboutme;