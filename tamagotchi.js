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
     this.foodInTummy -= 1;
      console.log("food in tummy = " + this.foodInTummy);
      console.log("WAHHH");
   }    
}
//create new Tamagotchis

 const newTamag1 = new Tamagotchi("newTamag1");
 const newTamag2 = new Tamagotchi("newTamag2"); 
 
//invoke each tamagotchi's cry method
  newTamag1.cry(24);

//test out your Tamagotchies below via console.logs

