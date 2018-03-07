import axios from 'axios'
import React from 'react';
import { render } from 'react-dom';
import { HashRouter as Router, Route } from 'react-router-dom';
import App from './components/App';

document.addEventListener('DOMContentLoaded', () => {
  var appDiv = document.getElementById('app');
  if( appDiv ){
    render(<App/>, appDiv);
  }
});
