const fetch = require('node-fetch');
const luis = require('./luis');

const FACEBOOK_ACCESS_TOKEN = process.env.FACEBOOK_ACCESS_TOKEN;

const sendTextMessage = async (userId, text) => {
    const res = await fetch(
        `https://graph.facebook.com/v2.6/me/messages?access_token=${FACEBOOK_ACCESS_TOKEN}`,
        {
            headers: {
                'Content-Type': 'application/json',
            },
            method: 'POST',
            body: JSON.stringify({
                messaging_type: 'RESPONSE',
                recipient: {
                    id: userId,
                },
                message: {
                    text,
                },
            }),
        }
    );

    console.log(res.status);
    const json = await res.json();
    console.log(json)
};

module.exports = async (event) => {
    const userId = event.sender.id;
    const message = event.message.text;

    console.log(`Received message: ${message}`);
    const answer = await getAnswer(message);
    console.log('Sending answer');
    await sendTextMessage(userId, answer);
    console.log(`Sent answer : ${answer}`);
};


const getAnswer = async (message) => {
    const res = await luis.query(message);
    switch (res.topScoringIntent.intent) {
        case 'askTimes':
            return 'We are open from Monday to Friday (9:00 - 18:00)';
        case 'Promotions':
            return 'This week we have a promotion on Trento Doc Perlé. You can find it on our store at ...';
        case 'Call':
            return 'This is our phone number: +39 1234567890';
        case 'Products':
        case 'Price':
            return 'You can find all our products on our website';
        case 'MyPack':
            return 'You can find all the information about your order on our website';
        case 'None':
        default:
            return 'Nice question!';
    }
};


