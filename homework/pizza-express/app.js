// app.js

//require express package
var express = require('express');
//const express = require('express');

//save an express module as 'app'
var app     = express();
//const app = express();

//create a route for "/"
app.get('/', function(req, res, next) {
    res.send("Welcome to Pizza Express! ");
});

//create a route for "/topping"
app.get('/topping/:type', function(req, res, next) {
    res.send("pepperoni pizza! Good choice. ");
});

//create a route for "/order"
app.get('/topping/:amount/:size', function(req, res, next) {
    res.send("Your order for (amount)(size) pizzas will be ready in 1 minute! ");
});


var port = 3000;
// assigning 3000 as our port
// tells the server to listen for requests on port 3000
//const port = process.env.PORT || 3000;
app.listen(port, () => {
 // console.log('Server started in port " + ${port}');
 console.log("==========================")
 console.log('LISTENING ON PORT ' + port);
 console.log("==========================")   
});
