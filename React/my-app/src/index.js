// Import React and ReactDOM libraries
import React from 'react';
import ReactDOM from 'react-dom';
// Create a react companent
const App = () => {
    const buttonText = "Click me";
    return <div>
        <label className="label" htmlFor="name">
            Enter name:
        </label>
        <input id="name" type="name"></input>
        <button style = {{backgroundColor: 'blue', color: 'white'}}>{buttonText}</button>
    </div>;
};
// Take the react component and show it on the screen
ReactDOM.render(
    <App />,
    document.querySelector("#root")
);

// Auto-refresh
if(module.hot){
    module.hot.accept();
} 