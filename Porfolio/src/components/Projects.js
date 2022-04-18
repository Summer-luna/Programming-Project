import React, {useState} from 'react';
import Project from './Project';
import projectImage1 from '../img/project1.png';
import Categories from './Categories';

const Projects = () => {
  const projects = [
    {
      id: 1,
      image: `${projectImage1}`,
      title: 'Food Blog Website Mock',
      describe: 'Used HTML and CSS to mock a food blog',
      tags: ['HTML', 'CSS'],
      link: 'https://github.com/Summer-luna/Programming-Project/tree/main/side%20projects/Blog-Website-Plain1',
    },
    {
      id: 2,
      image: `${projectImage1}`,
      title: 'Food Blog Website Mock',
      describe: 'Used HTML and CSS to mock a food blog',
      tags: ['React', 'CSS'],
      link: 'https://github.com/Summer-luna/Programming-Project/tree/main/side%20projects/Blog-Website-Plain1',
    },
    {
      id: 3,
      image: `${projectImage1}`,
      title: 'Food Blog Website Mock',
      describe: 'Used HTML and CSS to mock a food blog',
      tags: ['HTML', 'CSS'],
      link: 'https://github.com/Summer-luna/Programming-Project/tree/main/side%20projects/Blog-Website-Plain1',
    },
    {
      id: 4,
      image: `${projectImage1}`,
      title: 'Food Blog Website Mock',
      describe: 'Used HTML and CSS to mock a food blog',
      tags: ['HTML', 'CSS'],
      link: 'https://github.com/Summer-luna/Programming-Project/tree/main/side%20projects/Blog-Website-Plain1',
    },
    {
      id: 5,
      image: `${projectImage1}`,
      title: 'Food Blog Website Mock',
      describe: 'Used HTML and CSS to mock a food blog',
      tags: ['HTML', 'CSS'],
      link: 'https://github.com/Summer-luna/Programming-Project/tree/main/side%20projects/Blog-Website-Plain1',
    },
  ]

  const [project, setProject] = useState(projects);
  
  const filterProjects = (e) => {
    const results = [];
    const categories = document.querySelectorAll(".category");

    if(e.target.classList.contains("category")){
      projects.forEach((project)=>{
        if(project.tags.includes(e.target.textContent)){
          results.push(project);
        }
      })
      setProject(results);
    }

    if(e.target.textContent == "All"){
      setProject(projects);
    }

    /* add active-btn */
    categories.forEach(category => {
      if(category.classList.contains("active-btn")){
        category.classList.remove("active-btn");
      }
    })
    
    e.target.classList.add("active-btn");
  }

  return(
    <div className='projects' id="projects">
      <Categories onCategoryClick={filterProjects}/>
      <Project projects={project} />
    </div>
  )
}

export default Projects;
