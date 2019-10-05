import React, {Component} from 'react';
import queryString from 'query-string'
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import ListItemText from "@material-ui/core/ListItemText";
import "./Results.css";
import {ListItemAvatar} from "@material-ui/core";
import SearchBox from "../SearchBox/SearchBox";

export default class Results extends Component {

    products = [
        {
            id: '1234',
            name: 'Pasta',
            price: '10,0€'
        },
        {
            id: '12345',
            name: 'Pasta',
            price: '10,0€'
        },
        {
            id: '12346',
            name: 'Pasta',
            price: '10,0€'
        }
    ];

    render() {
        return (
            <div>
                <SearchBox/>
                <p>Results for "{this.getSearchTerm()}"</p>

                <List>

                    {
                        this.products.map(({id, name, price}) => (
                            <ListItem>
                                <ListItemAvatar>
                                </ListItemAvatar>
                                <ListItemText className="product-list-item" key={id} primary={name} secondary={price}/>
                            </ListItem>
                        ))
                    }


                </List>
            </div>
        );
    }

    componentDidMount() {
        console.log(this.getSearchTerm())
    }

    getSearchTerm() {
        const {search} = queryString.parse(this.props.location.search);
        return search;
    }
}