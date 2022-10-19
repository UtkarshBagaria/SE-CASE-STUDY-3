import React from "react";
import { Link } from "react-router-dom";
import './style/Navbar.css';

function NavBar(){
    return(
        <nav className="navbar">
            <h className="headernav">Day2Day</h>
            <ul>
                <li className="start"><Link to="/Start" style={{ textDecoration: 'none' }}>Get Started</Link></li>
                <li><Link to="/Weather" style={{ textDecoration: 'none' }}>Weather</Link></li>
                <li><Link to="/Note" style={{ textDecoration: 'none' }}>Note</Link></li>
                <li><Link to="/Entertainment" style={{ textDecoration: 'none' }}>Entertainment</Link></li>
                <li><Link to="/Calc" style={{ textDecoration: 'none' }}>Calorie Calc</Link></li>
                <li><Link to="/Bmr" style={{ textDecoration: 'none' }}>BMR</Link></li>
                <li><Link to="/Bmi" style={{ textDecoration: 'none' }}>BMI</Link></li>
                
                <li><Link to="/" style={{ textDecoration: 'none' }}>Home</Link></li>
            </ul>
        </nav>
    );
}

export default NavBar;