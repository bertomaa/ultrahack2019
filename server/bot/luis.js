const fetch = require('node-fetch');
const querystring = require('querystring');

const endpoint = process.env.LUIS_ENDPOINT;
const appId = process.env.LUIS_APP_ID;
const endpointKey = process.env.LUIS_ENDPOINT_KEY;



module.exports = {
    async query (str) {
        const params = {
            "verbose":  true,
            "q": str,
            "subscription-key": endpointKey
        };
        const url = `${endpoint}/${appId}?${querystring.stringify(params)}`;
        const res = await fetch(url);
        const json = await res.json();
        return json;
    }
};

