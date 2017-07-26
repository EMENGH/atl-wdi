var express = require('express');
var router = express.Router();

var User = require("../models/user");
var Item = require("../models/item");






// USERS INDEX ROUTE
router.get('/', (request, response) => {
	// make sure the route is good to go
	console.log('yo');
    User.find({})
        .then((users) => {
            response.render('users/index, {
            	users: users
            });
        })
        .catch((error));
})


// USER SHOW ROUTE


// USER CREATE ROUTE

// USER UPDATE ROUTE

// USER DESTROY

// ADD A NEW ITEM

// REMOVE AN ITEM

module.exports = router;
