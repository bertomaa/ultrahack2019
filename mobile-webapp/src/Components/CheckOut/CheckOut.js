import React, {Component} from 'react';
import RadioGroup from "@material-ui/core/RadioGroup";
import FormControlLabel from "@material-ui/core/FormControlLabel";
import Radio from "@material-ui/core/Radio";
import Paper from "@material-ui/core/Paper";
import "./CheckOut.css";
import {Typography} from "@material-ui/core";
import ListItemAvatar from '@material-ui/core/ListItemAvatar';
import Button from "@material-ui/core/Button";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faAmazonPay, faApplePay, faFacebookF, faGoogle} from '@fortawesome/free-brands-svg-icons';
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import ListItemText from "@material-ui/core/ListItemText";
import {product} from "../Product/Product";
import Avatar from '@material-ui/core/Avatar';

export default class CheckOut extends Component {
    render() {
        return (
            <div>
                <Typography>Order checkout</Typography>

                <Paper className="order-summary">
                    <Typography>Order summary</Typography>

                    <List>
                        <ListItem>
                            <ListItemAvatar>
                                <Avatar src="/images/0002.jpg"/>
                            </ListItemAvatar>
                            <ListItemText className="product-list-item" primary={product.name}
                                          secondary={product.price}/>
                        </ListItem>
                    </List>
                </Paper>

                <Paper className="delivery-settings">
                    <Typography>Delivery</Typography>
                    <RadioGroup>
                        <FormControlLabel value="pick-in-store" control={<Radio/>} label="Pick in Store"/>
                        <FormControlLabel value="delivery-at-home" control={<Radio/>} label="Delivery at Home"/>
                    </RadioGroup>
                </Paper>

                <Paper className="payment-settings">
                    <Typography>Payment</Typography>
                    <br/>
                    <Button fullWidth variant="outlined" className="facebook">
                        <FontAwesomeIcon icon={faFacebookF}/> Pay with Facebook
                    </Button><br/>
                    <Button fullWidth variant="outlined" className="amazon-pay">
                        <FontAwesomeIcon icon={faAmazonPay}/> Pay with Amazon
                    </Button>
                    <Button fullWidth variant="outlined" className="apple-pay">
                        <FontAwesomeIcon icon={faApplePay}/> Pay with Apple
                    </Button>
                    <Button fullWidth variant="outlined" className="apple-pay">
                        <FontAwesomeIcon icon={faGoogle}/> Pay with Google
                    </Button>
                </Paper>
            </div>
        );
    }
}