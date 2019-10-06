# Olivetti Social Manager

Digitalization made simple for small shops

> This repository contains the idea and different PoCs developed during the Olivetti Cash Register 4.0 Hackathon at Trento

## Idea description

Our idea consists of a system that allows merchants to generate an e-commerce website from her/his new
Olivetti Cash Register. Downloading the Olivetti Social Manager from the Olivetti Store, he/she will
be able to express the style and the story of his/her shop though a website easily accessible from
every device.

Products are automatically imported from the Cash Register using the Olivetti APIs provided from one
of the stock applications. When it's time to publish a new offer, the merchant can select the product,
insert a message and publish the offer on multi social channel in a single shot: Facebook posts, Instagram
photos or push notification for the users that already have opened the webapp on their phone. Moreover,
the platform allow the merchant to publish Ads using Facebook Ads, Instagram Ads and similar services.

## Features and implementations

### E-commerce generation

The e-commerce is a webapp built with React.js. When the merchants installs the app an id for the shop
is generated and this is used to identify the configuration of the e-commerce. The configuration is sent
to the server and when the browser requests the page it specifies the shop id, to retrieve the common scripts
and the shop configuration.
This means that all the e-commerce are accessible from a url with the same domain and one id that changes
for each shop.
 
Example: `https://social-manager.it/shops/12345`
 
The merchants will be able to replace the generic url with a personalized domain, always from the Social Manager App.

### Social publication

When the merchant publishes a social post using the Social Manager App, a request is sent to the server, which then
publishes the post trough the selected channels.

#### Facebook

There will be a Facebook App that requires permissions to administer pages and the merchant will be able to
give the permission to the app from the Social Manager App. The server can then use the Facebook API to publish the post.

##### Instagram

The approach is very similar to Facebook, but using the Instagram Graph API (for business accounts). 

### From Social to E-commerce

When a post about a product gets published, the description will automatically contain a URL that points to
the product page of the e-commerce. From there the customer will be able to add the product to his cart.

### E-commerce cart and checkout

The information about the users are obtained from the login via Facebook or other social networks.

### Pickup in store

If the customer selected the option to pick up his/her purchase from the store during the checkout, she/he will
need to scan with his phone (running the e-commerce webapp) the QR code that appears on the secondary screen of the Olivetti Cash Register.
The QR code identifies the single machine inside the shop. The webapp will then send a request to the server which
will notify the Social Manager running in the cash register to show the page with the info about the order. We
 initially thought about using websockets to connect the cash register with the server, but further discussion is needed
 to evaluate possible scalability problems.
 
### Chat bot

Social Manager will also offer automatic chat bots, through the Facebook page of the shop. The both will be able
to automatically answer questions about the timetable, order status and sales. When the question is too difficult
to be answered by the bot, the question will be sent to the server and showed in the Olivetti Cash Register. The merchant
will then be able to answer the questions, coming from different channels, from a single app.

## What did we implement?

We implemented different small parts of the idea, to be able to show the most important features during the presentation.

Implemented components:
- Prototype interface of the app running on the Cash Register. The app is built using Flutter.
- Prototype interface of the e-commerce running on the smartphone of the customer. The app is built using React.js.
- Facebook bot server implemented with Express. The bot uses Microsoft LUIS to extract intents from the user messages.
- Microsoft LUIS training for customers common questions.

