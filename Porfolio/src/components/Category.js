import React from 'react';

const Category = ({categories}) => {
  const renderContent = categories.map(({category, id}) =>{
    return <button className='btn' key={id} >{ category }</button>
  })
  return(
    <>
      {renderContent}
    </>
  )
}

export default Category;