import React, {useEffect, useState, useRef} from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faPhone, faEnvelope, faPaperPlane } from "@fortawesome/free-solid-svg-icons";

const Contact = () =>{

  /* const [message, setMessage] = useState({
    Name: '',
    Email: '',
    Message: ''
  }); */

  const sentMessage = (e) => {
    e.preventDefault();
    const data = new FormData(e.target);
    const message = Object.fromEntries(data.entries());
  }  

  return(
    <div className="contact" id="contact">
      <h2 className="contact-title">Get In Touch</h2>
      <div className="row">
        <div className="contact-box">
          <div className="contact-data">
            <div className="contact-info">
              <h3 className="contact-subtitle">Call me</h3>
              <span className="contact-description">
                <FontAwesomeIcon icon={faPhone} className="contact-icon" />
                <a href="tel:434-333-1802">+1 434 333 1802</a>
              </span>
            </div>
            <div className="contact-info">
              <h3 className="contact-subtitle">Email me</h3>
              <span className="contact-description">
                <FontAwesomeIcon icon={ faEnvelope } className="contact-icon" />
                <a href="mailto:xc2p6@umsystem.edu" target="_blank">xc2p6@umsystem.edu</a>
              </span>
            </div>
          </div>
        </div>
        {/* Contact form */}
        <form className="contact-form" onSubmit={sentMessage}>
          <div className="contact-inputs">
            {/* contact content */}
            <div className="contact-content">
              <input 
                type="text" 
                className="contact-input" 
                id="name"
                name="name"
                //onBlur={e => setMessage({Name: e.target.value})}
              />
              <label htmlFor="name" className="contact-label" >Name</label> 
              <span></span>
            </div>
            {/* contact content */}
            <div className="contact-content">
              <input 
                type="email" 
                className="contact-input" 
                id="email"
                name="email"
                //onBlur={e => setMessage({Email: e.target.value})}
                 />
              <label htmlFor="email" className="contact-label">Email</label> 
              <span></span>
            </div>
            {/* contact content */}
            <div className="contact-content contact-area">
              <textarea 
                name="message" 
                id="message" 
                cols="30" 
                rows="10" 
                className="contact-input" 
                //onBlur={e => setMessage({Message: e.target.value})}
              >
              </textarea>
              <label htmlFor="message" className="contact-label">Message</label> 
              <span></span>
            </div>       
          </div>
          <button href="" className="btn btn-default"><FontAwesomeIcon icon={ faPaperPlane } className="btn-icon"/>Send</button>
        </form>
      </div>
    </div>
  )
}

export default Contact;