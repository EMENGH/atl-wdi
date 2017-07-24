 console.log('tamagotchi file is loaded');

//your constructor function here
class Tamagotchi {
   constructor(name, creatureType, foodInTummy, restedness, health) {
       this.foodInTummy =10;
       this.restedness = 10;
       this.health = 10;
       this.name = name;
       this.creatureType = creatureType;
   }

   //add method called cry
   cry() {
     this.foodInTummy -= 1;
      console.log("food in tummy = " + this.foodInTummy);
      console.log("WAHHH");
      console.log(this.name + " WAHHH");
   }  

   puke() {
    this.foodInTummy -= 1;
    console.log(this.foodInTummy + " WAHHH");
   }

   yawn() {
    this.restedness -= 1;
    console.log(this.name + " has current restedness = " + this.restedness);

   }



}
//create new Tamagotchis

 const newTamag1 = new Tamagotchi("newTamag1");
 const newTamag2 = new Tamagotchi(); 
 const newTamag3 = new Tamagotchi("newTamag3");
 
//invoke each tamagotchi's cry method
  newTamag1.cry(24);
  newTamag2.puke();
  newTamag3.yawn();

//test out your Tamagotchies below via console.logs
