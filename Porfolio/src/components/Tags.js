import React from 'react';

const Tags = ({tags}) => {
  const renderContent = tags.map((tag)=>{
    return <small className="card-tag" key={tag}>{`#${tag}`}</small>
  })
  return(
    <>
      {renderContent}
    </>
  )
}

export default Tags