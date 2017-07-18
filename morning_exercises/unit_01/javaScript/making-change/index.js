// General Assembly, WDI (Web Development Immersive) Remote, Cohort 02 (R2D2)
// Copyright (C) 2016 Matt Brendzel under the GNU General Public License.
// See LICENSE for details.
"use strict";
/// DO NOT EDIT ABOVE THIS LINE ///
qtrs = 0.25;
dimes = 0.10;
nickels = 0.05;
pennies = 0.01;
changeArray = [];
var makeChange = function(price, payment) {
 price = price * 100;
 payment = payment * 100;
 var change = Math.floor(payment - price);

  if(change <= 0) {
  	console.log("no change");
  	return[0,0,0,0]
  

    var quarters = math.floor(change/25);
    change = change % 25;

    var dimes = math.floor(change/10);
    change = change % 10;

    var nickels = math.floor(change/5);
    change = change % 5;

    var pennies = Math.floor(change);

  }  	

};

/// DO NOT EDIT BELOW THIS LINE ///
module.exports = {
  makeChange: makeChange
};
