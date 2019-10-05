import React, {Component} from 'react';

import productPlaceholder from "../../../../cash_register_app/assets/VINI/0002.jpg";

import Typography from "@material-ui/core/Typography";
import Button from "@material-ui/core/Button";
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faShoppingCart} from '@fortawesome/free-solid-svg-icons'
import "./Product.css";
import {Link} from "react-router-dom";

export const product = {
    name: 'Franciacorta DOCG “Cuvée Prestige',
    description: 'Alla vista, color giallo paglierino, lucente. Perlage fine e persistente. All’olfatto, mostra sentori delicati di fiori bianchi e frutta a polpa gialla, con un bel sentore di pasticceria e un lieve rimando erbaceo. Gusto piacevole, pulito e vivace, si distende armonicamente su una trama minerale spiccata e note di frutta esotica.',
    price: '29,40 €',
    icon: productPlaceholder
};

export default class Product extends Component {

    state = {
        quantity: 1
    };

    render() {
        const {name, description, price} = this.getProductInfo();
        return (
            <div>
                <img className="product-image" src={productPlaceholder} alt="preview of product"/>

                <Typography variant="h5" component="h2">
                    {name}
                </Typography>

                <div className="price-quantity">
                    <span className="price">{price}</span>

                    <div>
                        <input type="number" value={this.state.quantity} onChange={this.onChangeQuantity} min={1}
                               max={10}/>

                        <Link to="/checkout">
                            <Button variant="contained" color="secondary">
                                <FontAwesomeIcon className="add-icon" icon={faShoppingCart}
                                                 style={{marginRight: '.5em'}}/>
                                Add
                            </Button>
                        </Link>
                    </div>
                </div>

                <p className="description">
                    <span className="description-title">Description:</span><br/>
                    {description}
                </p>
            </div>
        );
    }

    onChangeQuantity = (e) => {
        this.setState({
            quantity: parseInt(e.target.value, 10)
        })
    };

    getProductId = () => this.props.match.params.id;

    getProductInfo = () => {
        return product;
    };
}
