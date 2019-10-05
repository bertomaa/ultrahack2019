import React, {Component} from 'react';
import './App.css';

import Container from "@material-ui/core/Container";
import Drawer from "@material-ui/core/Drawer";
import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import IconButton from "@material-ui/core/IconButton";
import Typography from "@material-ui/core/Typography";
import MenuIcon from '@material-ui/icons/Menu';
import SearchBox from "./Components/SearchBox/SearchBox";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import SocialFab from "./Components/SocialFab/SocialFab";
import Results from "./Components/Results/Results";
import Product from "./Components/Product/Product";
import Home from "./Components/Home/Home";
import {faShoppingCart} from "@fortawesome/free-solid-svg-icons";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import Button from "@material-ui/core/Button";
import TopBar from "./Components/TopBar/TopBar";
import Cart from "./Components/Cart/Cart";
import CheckOut from "./Components/CheckOut/CheckOut";


class App extends Component {



    render() {
        return (
            <div className="app">
                <Router>
                    <TopBar/>

                    <SearchBox/>

                    <Container>
                        <Switch>
                            <Route path="/results" component={Results}/>
                            <Route path="/products/:id" component={Product}/>
                            <Route path="/cart" component={Cart}/>
                            <Route path="/checkout" component={CheckOut}/>
                            <Route path="/" component={Home}/>
                        </Switch>

                    </Container>


                    <SocialFab/>
                </Router>
            </div>
        );
    }


}

export default App;
