import React from "react";

const Aboutme = () => {
  return(
    <div className id="Aboutme">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#FFF9FB" fill-opacity="1" d="M0,128L480,224L960,160L1440,64L1440,320L960,320L480,320L0,320Z"></path></svg>
      <div className="bg-snow">
        <div className="container">
          <h1 className="text-center mb-5">About Me</h1>
          <p>Hi, I'm Xinyue Chen, a front-end developer. I also love doing back-end development. I'm passion to learn new technology. Currently studying in Missouri University of Science and Technology as a graduate student. I've been building stuff on web since my college. I've made many side projects and I'm also be able to use React to build delightful user interfaces.</p>
          <p>
            
          </p>
          <h2 className="text-center">Education</h2>
          <div className="timeline">
            <ul>
              <li>
                <div className="timeline-content">
                  <h1>Heading 1</h1>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum quis exercitationem voluptatem quo assumenda dolorum porro optio voluptas ratione excepturi dolor doloremque ad nulla totam est blanditiis, nihil laudantium qui?</p>
                </div>
              </li>
              <li>
                <div className="timeline-content">
                  <h1>Heading 2</h1>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum quis exercitationem voluptatem quo assumenda dolorum porro optio voluptas ratione excepturi dolor doloremque ad nulla totam est blanditiis, nihil laudantium qui?</p>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Aboutme;