import React from 'react';
import Category from './Category';

const Categories = () => {
  const categories = [
    {
      id: 0,
      category: "All"
    },
    {
      id: 1,
      category: "Vanilla JavaScript"
    },
    {
      id: 2,
      category: "React"
    },
    {
      id: 3,
      category: "PHP"
    },
    {
      id: 4,
      category: "HTML"
    },
    {
      id: 5,
      category: "CSS"
    },
  ];
  return(
    <div>
     <div className='container'>
      <h1 className='text-center mb-5'><strong>Projects</strong></h1>
      <Category categories={categories} />
      </div>
    </div>
  )
}

export default Categories;