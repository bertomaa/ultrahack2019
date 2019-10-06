require('dotenv').config();

const express = require('express');
const bodyParser = require('body-parser');

const verifyWebhook = require('./verify-webhook');
const messageWebhook = require('./message-webhook');

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', verifyWebhook);
app.post('/', messageWebhook);

app.listen(3000, () => console.log('Express server is listening on port 3000'));


require('./luis').query('ciao, come va?');