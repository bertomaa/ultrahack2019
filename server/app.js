const db = require('./db');
const uuid = require('uuid');
const bodyParser = require('body-parser');

const express = require('express');
const app = express();
const port = 3000;

app.use(bodyParser.json());



app.get('/shops/:id', async (req, res) => {
	const shopId = req.params.id;
	const shop = await db.getShop(shopId);
	res.json(shop);
});

app.post('/shops', async (req, res) => {
	const shopId = uuid();
	await db.setShop(shopId, req.body);
	res.status(201).json({
		shopId,
		...req.body
	});
});

app.put('/shops/:id', async (req, res) => {
	const shopId = req.params.id;
	await db.setShop(shopId, req.body);
	res.status(201).json({
		shopId,
		...req.body
	});
});


app.listen(port, () => console.log(`Example app listening on port ${port}!`));
