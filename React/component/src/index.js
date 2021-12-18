// import React and ReactDOM libraries
import React from 'react';
import ReactDOM from 'react-dom';
import faker from 'faker';

// Create 
const App = () => {
    return <div className='ui container comments'>
        <div className='comment'>
            <a href="/" className='avatar'>
                <img alt='avatar' src={faker.image.cats()} />
            </a>
            <div className='content'>
                <a href="/" className='author'>
                    Sam
                </a>
                <div className='metadata'>
                    <span className='data'>Today at 6:00PM</span>
                </div>
                <div className='text'>Nice blog post!</div>
            </div>
        </div>
    </div>
}
// Take components and dispaly it on screen
ReactDOM.render(
    <App />,
    document.querySelector("#root")
)
