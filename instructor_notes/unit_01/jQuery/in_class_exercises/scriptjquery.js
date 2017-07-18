var counterFromJQuery = $('#counter');

var data = $('#counter').data().counterIndex;

console.log(data);

//create an object
var CounterCollection = {
    counters: [
      {
      	currentValue: 0,
      	counterName: 'Errors'
      },
      {
      	currentValue: 0,
      	counterName: 'Warnings'
      }      	
    ]
}

//find the counter container
var $counterContainer = $('#counter-container');

// loop through the user's counters
//old for loop
for(var i = 0; i < CounterCollection.counters.length; i++) {
   //get 

	console.log(CounterCollection.counters[i].currentValue
})

   // for each counter create a div

   // the div should have a class of counter

   // the div should have a data-counter-index of
   // the current array index

   // the div should have a header with the counter name

   // the div should have a span containing the currentValue

   // the div should have a button with an id of 'add-one'

   // the div should be appended to '#counter-container'



//find the button
var $button = $('#add-one');

// add an event listener to the button
button.on('click', function () {
// then, inside the listener callback:

    // find the span to get the current value
    var currentValue = $('#current-count').text();
    var currentValueAsInt = parseInt(currentValue);

    // add one to the current span value
    currentValueAsInt += 1;



    // change the span to the new value
    $('#current-count').html(currentValueAsInt);
});

// find the form submit button
var $newCounterButton = $('#add-new-counter');

// add an event listener to the button
$newCounterButton.on('click', function () {
// inside of the event listener	

   // stop the page from refreshing
   event.preventDefault();

   // find the value of the new counter name
   var newCounterName = $('#new-counter-name').val();


   // find the value of the new counter start value
   var newCounterStartValue = $('new-counter-start-value').val();
   
   // alert both
   alert('New Counter Name: ' + newCounterName);
   //another way to do this:
   alert('New Counter Start Value: ${newCounterStartValue}');

};
