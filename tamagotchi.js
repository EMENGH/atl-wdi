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
      console.log(this.name + "WAHHH");
   }    
}
//create new Tamagotchis

 const newTamag1 = new Tamagotchi("newTamag1");
 const newTamag2 = new Tamagotchi("newTamag2"); 
 const newTamag3 = new Tamagotchi("newTamag3");
 
//invoke each tamagotchi's cry method
  newTamag1.cry(24);

//test out your Tamagotchies below via console.logs
