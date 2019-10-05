import React, {Component} from 'react';
import Toolbar from "@material-ui/core/Toolbar";
import IconButton from "@material-ui/core/IconButton";
import MenuIcon from "@material-ui/core/SvgIcon/SvgIcon";
import Typography from "@material-ui/core/Typography";
import Button from "@material-ui/core/Button";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faShoppingCart} from "@fortawesome/free-solid-svg-icons";
import AppBar from "@material-ui/core/AppBar/AppBar";
import Drawer from "@material-ui/core/Drawer";
import "./TopBar.css";
import Badge from "@material-ui/core/Badge";

export default class TopBar extends Component {


    state = {
        drawerOpen: false
    };


    render() {
        return (
            <div className="top-bar">
                <AppBar position="static">
                    <Toolbar>
                        <IconButton onClick={this.toggleDrawer} edge="start" color="white" aria-label="menu" >
                            <MenuIcon className="hamburger"/>
                        </IconButton>
                        <Typography variant="h6" className="shop-name">
                            Coop da qualche parte
                        </Typography>

                        <IconButton aria-label="show 4 new mails" className="shopping-cart">
                            <Badge badgeContent={4} color="secondary">
                                <FontAwesomeIcon icon={faShoppingCart}/>
                            </Badge>
                        </IconButton>
                    </Toolbar>

                </AppBar>
                <Drawer open={this.state.drawerOpen} onClose={this.toggleDrawer}>
                    <p>content</p>
                </Drawer>
            </div>
        );
    }

    toggleDrawer = () => {
        this.setState(({drawerOpen}) => ({
            drawerOpen: !drawerOpen
        }));
    }
}