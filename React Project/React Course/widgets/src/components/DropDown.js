import React from 'react';

const DropDown = ({colors, selected, onSelectedChange}) => {
  const renderContent = colors.map((color)=>{
    if(color.value === selected.value){
      return null; //do not render it
    }

    return <li className='dropdown-item' 
               key={color.value} 
               onClick={() => {onSelectedChange(color)}}> 
            {color.label} 
            </li>
  })

  return(
    <div className='dropdown'>
      <h3>Select a Color</h3>
      <button className="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
        {selected.label}
      </button>
      <ul className="dropdown-menu" aria-labelledby="dropdownMenuButton1">
        {renderContent}
      </ul>
    </div>
  )
}

export default DropDown;