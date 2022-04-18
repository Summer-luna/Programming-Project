import React from 'react';

const Category = ({categories, onCategoryClick}) => {
  const renderContent = categories.map(({category, id}) =>{
    return <button className='btn category' key={id} onClick={onCategoryClick}>{ category }</button>
  })
  return(
    <>
      {renderContent}
    </>
  )
}

export default Category;