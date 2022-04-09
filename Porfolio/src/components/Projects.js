import React from 'react';
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
      tags: ['HTML', 'CSS'],
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

  return(
    <div className='projects' id="projects">
      <Categories />
      <Project projects={projects} />
    </div>
  )
}

export default Projects;
