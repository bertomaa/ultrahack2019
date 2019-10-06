const redis = require("redis");
const client = redis.createClient();


client.on("error", function (err) {
    console.log("Error " + err);
});



module.exports = {
	async getShop(id) {
		const promise = new Promise((resolve, reject) => {
			client.get(id, function(error, result) {
				if (!result) {
					resolve(new Error('no shop found'));
				}
				resolve(JSON.parse(result));
			});
		});
		return promise;
	},

	async setShop(id, shop) {
		client.set(id, JSON.stringify(shop));
	}
};

 