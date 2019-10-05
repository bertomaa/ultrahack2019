import React, {Component} from 'react';
import InputBase from "@material-ui/core/InputBase";
import SearchIcon from '@material-ui/icons/Search';
import "./SearchBox.css";


export default class SearchBox extends Component {
    render() {
        return (
            <div className="search-box-container">
                <SearchIcon className="search-icon"/>
                <InputBase
                    className="search-input"
                    placeholder="Search…"
                    inputProps={{'aria-label': 'search'}}
                />
            </div>
        );
    }
}