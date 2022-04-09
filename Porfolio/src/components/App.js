import React from "react";
import Header from './Header';
import Introduction from "./Inroduction";
import Projects from "./Projects";
import Skill from "./Skill";
import Aboutme from "./Aboutme";
import Contact from "./Contact";
import Footer from "./Footer";


const App = () => {
  return(
    <div className="container">
      <Header />
      <Introduction />
      <Skill />
      <Projects />
      <Aboutme />
      <Contact />
      <Footer />
    </div>
  )
}

export default App;