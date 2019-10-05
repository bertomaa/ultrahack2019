import React, {Component} from 'react';
import placeholder from "../../images/img-placeholder.png";
import Grid from "@material-ui/core/Grid";
import {Paper} from "@material-ui/core";
import SearchBox from "../SearchBox/SearchBox";

export default class Home extends Component {
    render () {
        return (
            <div>
                <SearchBox/>

                <img width="100%" src={placeholder} alt="Welcome to Cantina Privilège"/>

                <Grid container spacing={3}>
                    <Grid item xs={6}>
                        <Paper>test</Paper>
                    </Grid>
                    <Grid item xs={6}>
                        <Paper>test</Paper>
                    </Grid>
                    <Grid item xs={6}>
                        <Paper>test</Paper>
                    </Grid>
                    <Grid item xs={6}>
                        <Paper>test</Paper>
                    </Grid>
                </Grid>
            </div>
        );
    }
}