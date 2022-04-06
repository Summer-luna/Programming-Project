import React from 'react';

const Tags = ({tags}) => {
  const renderContent = tags.map((tag)=>{
    return <small className="card-text text-grey me-2" key={tag}>{`#${tag}`}</small>
  })
  return(
    <>
      {renderContent}
    </>
  )
}

export default Tags