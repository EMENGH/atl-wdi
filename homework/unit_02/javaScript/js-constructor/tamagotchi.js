 console.log('tamagotchi file is loaded');

<<<<<<< HEAD
//your constructor function here
class Tamagotchi {
   constructor(name, creatureType, foodInTummy, restedness, health) {
       this.foodInTummy =10;
       this.restedness = 10;
       this.health = 10;
       this.name = name;
       this.creatureType = creatureType;
   }
=======
//your class declaration here
>>>>>>> b052ec792449f0b6ad8d99ec0236784a8673c690

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




   start() {
    console.log("tamagotchis name: " + this.name);
    var tamagotchiAction = this;

      this.hungerTimer = setInterval(function() {
      tamagotchiAction.cry();
    }, 
    6000);  // cry every 6 seconds

      this.yawnTimer = setInterval(function() {
      tamagotchiAction.yawn();
    },
    10000); // yawn every 10 seconds

      this.sickTimer = setInterval(function() {
      self.puke();
    },
    20000); // puke every 20 seconds

  };

  stop() {
    console.log("Stopping " + this.name);
    clearInterval(this.hungerTimer);
    clearInterval(this.yawnTimer);
    clearInterval(this.sickTimer);
  };
}
//create new Tamagotchis

 const newTamag1 = new Tamagotchi("newTamag1");
 const newTamag2 = new Tamagotchi(); 
 const newTamag3 = new Tamagotchi("newTamag3");
 
//invoke each tamagotchi's cry method
  newTamag1.cry(24);
  newTamag2.puke();
  newTamag3.yawn();
  newTamag2.start();

//test out your Tamagotchies below via console.logs
