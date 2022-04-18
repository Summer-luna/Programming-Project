import React from 'react';
import Category from './Category';

const Categories = ({onCategoryClick}) => {
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
    <div className='categories'>
      <h2>Projects</h2>
      <Category categories={categories} onCategoryClick={onCategoryClick}/>
    </div>
  )
}

export default Categories;