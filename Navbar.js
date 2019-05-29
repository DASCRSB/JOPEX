import React, {Component} from 'react';
import {Link} from 'react-router-dom';

export default class Navbar extends Component {
    render() {
        return(
            <nav className = "navbar navbar-expand-sm bg-success navbar-dark px-sm-5">
                 {/* https://www.iconfinder.com/icons/1243689/call_phone_icon
                Creative Commons (Attribution 3.0 Unported);
                https://www.iconfinder.com/Makoto_msk */}
                <ul  className = "navbar-nav align-items-center">
                    <li className = "nav-item ml-5">
                        <Link to = '/' className = "navbar-brand">
                            <i className="fas fa-home"></i>
                        </Link>
                    </li>  
                    <li className = "nav-item ml-5">
                        <Link to = '/contact' className = "navbar-brand">
                            <i className="fas fa-phone"></i>
                        </Link>
                    </li>
                    <li className = "nav-item ml-5">
                        <div className = "dropdown">   
                            <i className ="fas fa-list"></i>
                            <div className = "dropdown-content">
                                <li>
                                    <Link to = '/men'>
                                        Men
                                    </Link>
                                </li>
                                <li>    
                                    <Link to = '/women'>
                                        Women
                                    </Link>
                                </li>    
                            </div> 
                        </div>    
                    </li>
                    <li className = "nav-item ml-5">
                        <Link to = '/faq' className = "navbar-brand">
                            <i className="far fa-question-circle"></i>
                        </Link>    
                    </li>
                    <li className = "nav-item ml-5">
                        <div className="search-container">
                            <input type="text" placeholder="Search.." name="search"/>
                                <button type="submit">
                                    <i className="fas fa-search"></i>
                                </button>             
                        </div>
                    </li>
                    <li className = "nav-item ml-5">
                        <Link to = '/cart' className = 'ml-auto'>
                            <button>
                                <i className = "fas fa-cart-plus" /> Cart
                            </button>
                        </Link>    
                    </li>  
                </ul>    
            </nav>
        )
    }
}