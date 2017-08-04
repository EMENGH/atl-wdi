import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import Profile from './components/Profile';

class App extends Component {
  render() {   //special method within react - exact html we want to show on the screen

    return ( // throws whatever we want to show on the page
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Welcome to React</h2>
        </div>
        <p className="App-intro">
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
        <Profile />
      </div>
    );

  }
}

export default App;
