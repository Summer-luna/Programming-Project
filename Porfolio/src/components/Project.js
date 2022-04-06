import React from 'react';
import Tags from './Tags';

const Project = ({projects}) => {
  const renderContent = projects.map(({id, image, title, describe, tags, link}) => {
    return <div className='col ' key={id}>
      <div className="card mb-3" style={{width: "18rem"}} >
        <a href="#"><img src={image} className="card-img-top" alt="..." /></a>
        <div className="card-body">
          <h5 className="card-title">{title}</h5>
          <Tags tags={tags} />
          <div className='d-flex justify-content-between mt-3' >
            <a href={link} className="btn"><i className="bi bi-github me-2"></i>Github</a>
            <a href="#" className='btn'>View</a>
          </div>
        </div>
      </div>
    </div>
  })
  return(
    <div className='row mt-5'>
      {renderContent}
    </div>
  )
}

export default Project;