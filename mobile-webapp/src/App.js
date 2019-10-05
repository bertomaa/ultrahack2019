import React, {Component} from 'react';
import './App.css';

import Container from "@material-ui/core/Container";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import SocialFab from "./Components/SocialFab/SocialFab";
import Results from "./Components/Results/Results";
import Product from "./Components/Product/Product";
import Home from "./Components/Home/Home";
import TopBar from "./Components/TopBar/TopBar";
import Cart from "./Components/Cart/Cart";
import CheckOut from "./Components/CheckOut/CheckOut";
import {ThemeProvider} from '@material-ui/styles';
import {createMuiTheme} from "@material-ui/core";

class App extends Component {

    theme = createMuiTheme({
        primary: '#000000',
        secondary: '#ff4081'
    });

    render() {
        return (
            <ThemeProvider theme={this.theme}>
                <div className="app">
                    <Router>
                        <TopBar/>

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
            </ThemeProvider>
        );
    }


}

export default App;
