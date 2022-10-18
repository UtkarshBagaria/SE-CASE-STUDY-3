import logo from './logo.svg';
import './style/App.css';
import reactDom from 'react-dom';

import Home from './components/Home';
import Fitness from './components/Fitness'
import Help from './components/Help';
import NavBar from './Navbar';
import Start from './components/Start';
import PageCalcalc from './components/page_calcalc'
import Notes from './components/Notes';
import PageBMI from './components/Bmi';
import Weather from './components/Weather'
import PageBMR from './components/page_bmr';
import Entertainment from './components/entertainment';
import {Route,Link} from 'react-router-dom';

function App() {
  return (
    <>
    <NavBar/>
    <Route exact path="/" component={Home}/>
    <Route exact path="/Weather" component={Weather}/>
    <Route exact path="/Start" component={Start}/>
    <Route exact path="/Calc" component={PageCalcalc}/>
    <Route exact path="/Help" component={Help}/>
    <Route exact path="/Bmi" component={PageBMI}/>
    <Route exact path="/Note" component={Notes}/>
    <Route exact path="/Bmr" component={PageBMR}/>
    <Route exact path="/Entertainment" component={Entertainment}/>
    

    </>
  );
}

export default App;
