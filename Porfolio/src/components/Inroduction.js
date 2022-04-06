import React from "react";
//import bg from "../img/background.png";

const Introduction = () => {
  return(
      <div className="row d-flex mt-5">
        <div className="col d-flex flex-column bg-img justify-content-center text-center pt-5" >
          <small className="fw-bold">Hello, I'm</small>
          <h1 >Xinyue Chen</h1>
          <p className="">FRONT-END DEVELOPER</p>

          <button className="btn btn-light mx-auto my-5" style={{ width: "200px"}}><strong>Download Resume</strong></button>
        </div>
      </div>
  )
}

export default Introduction