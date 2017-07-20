const express = require('express');

const router = express.Router();

router.get('/:type', function(req, res){
    res.render('toppings', {
    message: `${req.params.type} pizza! Good choice, `
   }); 
});

module.exports = router;