  console.log('tamagotchi file is loaded');

//your constructor function here
class Tamagotchi {
   constructor(foodInTummy, restedness, health) {
       this.foodInTummy =10;
       this.restedness = 10;
       this.health = 10;
   }

   //add method called cry
   cry() {
      return this.foodInTummy -= 1;
      console.log("value = " + this.foodInTummy);
      console.log("WAHHH");
   }    
}
//create new Tamagotchis

 const newTamag = new Tamagotchi("newTamag");
 
//invoke each tamagotchi's cry method
  newTamag.cry(24);
