import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faPhone, faEnvelope, faPaperPlane } from "@fortawesome/free-solid-svg-icons";

const Contact = () =>{
  return(
    <div className="contact">
      <h2 className="contact-title">Get In Touch</h2>
      <div className="row">
        <div className="contact-box">
          <div className="contact-data">
            <div className="contact-info">
              <h3 className="contact-subtitle">Call me</h3>
              <span className="contact-description">
                <FontAwesomeIcon icon={faPhone} className="contact-icon" />
                +1 434 333 1802
              </span>
            </div>
            <div className="contact-info">
              <h3 className="contact-subtitle">Email me</h3>
              <span className="contact-description">
                <FontAwesomeIcon icon={ faEnvelope } className="contact-icon" />
                xc2p6@umsystem.edu
              </span>
            </div>
          </div>
        </div>
        {/* Contact form */}
        <form className="contact-form">
          <div className="contact-inputs">
            {/* contact content */}
            <div className="contact-content">
              <input type="text" className="contact-input" id="name" />
              <label htmlFor="name" className="contact-label">Name</label> 
              <span></span>
            </div>
            {/* contact content */}
            <div className="contact-content">
              <input type="email" className="contact-input" id="email" />
              <label htmlFor="email" className="contact-label">Email</label> 
              <span></span>
            </div>
            {/* contact content */}
            <div className="contact-content contact-area">
              <textarea name="message" id="message" cols="30" rows="10" className="contact-input"></textarea>
              <label htmlFor="message" className="contact-label">Message</label> 
              <span></span>
            </div>       
          </div>
          <a href="" className="btn btn-default"><FontAwesomeIcon icon={ faPaperPlane } className="btn-icon" />Send</a>
        </form>
      </div>
    </div>
  )
}

export default Contact;