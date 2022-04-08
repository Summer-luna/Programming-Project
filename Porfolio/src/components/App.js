import React from "react";
import Header from './Header';
import Introduction from "./Inroduction";
import Categories from "./Categories";
import Projects from "./Projects";
import Skill from "./Skill";
import Aboutme from "./Aboutme";

const App = () => {
  return(
    <div className="container">
      <Header />
      <Introduction />
      {/* <Skill />
      <Categories />
      <Projects />
      <Aboutme /> */}
    </div>
  )
}

export default App;