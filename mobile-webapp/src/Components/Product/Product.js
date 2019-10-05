import React, {Component} from 'react';

import productPlaceholder from "../../images/product-placeholder.png";
import Typography from "@material-ui/core/Typography";
import Button from "@material-ui/core/Button";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faShoppingCart} from '@fortawesome/free-solid-svg-icons'

export default class Product extends Component {
    render() {
        const {name, description, price, image} = this.getProductInfo();
        return (
            <div>
                <img src={productPlaceholder} width="100%"/>

                <Typography variant="h4" component="h2">
                    { name }
                </Typography>

                {price}

                <div>
                    <input type="number" value={1} min={1} max={10}/>

                    <Button>
                        <FontAwesomeIcon icon={faShoppingCart}/>
                        Add
                    </Button>
                </div>

                <p>
                    {description}
                </p>
            </div>
        );
    }

    getProductId = () => this.props.match.params.id;

    getProductInfo = () => {
        return {
            name: 'Pasta',
            description: 'descrizione pasta...',
            price: '10.0€'
        }
    };
}
