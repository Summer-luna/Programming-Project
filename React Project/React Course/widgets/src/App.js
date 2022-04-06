import React, {useState} from 'react';
import Accordion from './components/Accordion';
import Search from './components/Search';
import DropDown from './components/DropDown';

const items = [
  {
    title: "What is React?",
    content: "React is front end javascript framework."
  },
  {
    title: "Why use React?",
    content: "React is a favorite JS library among engineers."
  },
  {
    title: "How do you use React?",
    content: "You use React by creating components"
  }
]

const colors = [
  {
    label: 'the color of red',
    value: 'red'
  },
  {
    label: 'the color of blue',
    value: 'blue'
  },
  {
    label: 'the shade of green',
    value: 'green'
  }
]



const App = () => {
  const [selected, setSelected] = useState(colors[0]);
  
  return(
    <div>
      <DropDown 
        colors={colors} 
        selected={selected} 
        onSelectedChange={setSelected}
        />
    </div>
  );
}

export default App;