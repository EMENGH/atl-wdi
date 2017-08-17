
var express = require("express");
var router = express.Router();
var pirates = require('../models/pirates.js');

//==============================
// READ
//==============================
//for root pirate page
router.get('/', function(req, res){
    res.render("pirates/index.hbs", {
        pirates: pirates.seededPirates
    });
});


router.get('/new', function(req, res){
    res.render("pirates/new.hbs");
});


//this is for each pirate page
router.get('/:id', function(req, res){

    //grab the pirate by id
    var showPirate = pirates.seededPirates[req.params.id];

    res.render("pirates/show.hbs", {
        pirate: showPirate
    });
});


// CREATE


router.post('/', (req, res) => {
   console.log(req.body);

   const newPirate = {
       name: req.body.name,
       birthplace: req.body.birthplace,
        yearOfDeath: req.body.yearOfDeath,
        base: req.body.base,
        nickname: req.body.nickname
   };

   pirates.seededPirates.push(newPirate);

   res.redirect("/pirates");
});

// UPDATE 

router.get('/:id/edit', (req, res) => {
   var showPirate = pirates.seededPirates[req.params.id]

   res.render('pirates/edit.hbs', {
   pirate: showPirate,
   id: req.params.id
  });
});

router.put('/:id', (req, res) => {
  var showPirate = pirates.seededPirates[req.params.id]
  console.log(pirates.seededPirates[req.params.id])
  showPirate.name = req.body.name
  showPirate.birthplace = req.body.birthplace
  showPirate.death_year = req.body.death_year
  showPirate.base = req.body.base
  showPirate.nickname = req.body.nickname
  console.log(pirates.seededPirates[req.params.id])
  res.method = 'GET';
  res.redirect(`/pirates/${req.params.id}`)
})

// DESTROY

router.delete('/:id', (req, res) => {
  pirates.seededPirates.splice(req.params.id, 1)
  res.method = 'GET';
  res.redirect('/pirates')
})

// EXPORT

module.exports = router;