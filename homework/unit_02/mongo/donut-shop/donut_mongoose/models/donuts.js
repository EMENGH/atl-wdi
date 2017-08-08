//requirements: require mongoose
var mongoose = require("mongoose");
var DonutModel = mongoose.model("Donut", DonutSchema);

//create your donut schema:
var donutSchema = new Schema({
    name: String,
    description: String,
    img: String,
    price: Number,
    qty: Number
});

//export your donut with module.exports()
var DonutModel = mongoose.model('Donut', donutSchema);
module.exports = DonutModel;




