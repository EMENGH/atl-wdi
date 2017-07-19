// app.js

//require express package
var express = require('express');
//const express = require('express');

//save an express module as 'app'
var app     = express();
//const app = express();

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
