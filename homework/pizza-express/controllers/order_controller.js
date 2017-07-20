const express = require('express');

const router = express.Router();;

router.get('/', function(req, res)  {
	res.render('order', {
    data: "how many pizzas do you want"
   });
});



router.get('/:amount', function(req, res)  {
	res.render('order', {
		data: "how many pizzas do you want"
	});
});

router.get('/:amount/:size', function(req, res){
    res.render('order', {
    	data: "please enter the amount of pizzas and size desired"
    });
});

module.exports = router;