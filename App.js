import React from 'react';
import {Switch, Route} from 'react-router-dom';
import './App.css';
import "bootstrap/dist/css/bootstrap.min.css";
import {Component} from 'react';
import Navbar from './components/Navbar';
import Home from './components/Home';
import  Cart from './components/Cart';
import  Default from './components/Default';
import   Details from './components/Details';
import   Contact from './components/Contact';
import   Men from './components/Men';
import   Women from './components/Women';
import   FAQ from './components/FAQ';


class App extends Component {
  render() {
    return (
      <React.Fragment>
        <Navbar />
        <Switch>
          <Route exact path = "/" component = {Home}></Route>
          <Route path = "/details" component = {Details}></Route>
          <Route path = "/cart" component = {Cart}></Route>
          <Route path = "/contact" component = {Contact}></Route>
          <Route path = "/men" component = {Men}></Route>
          <Route path = "/women" component = {Women}></Route>
          <Route path = "/faq" component = {FAQ}></Route>
          <Route component = {Default}/>
        </Switch>
      </React.Fragment>
    );
  }
}

export default App;
