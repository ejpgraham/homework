function titleize(nameArray, callback){
  // need to use back ticks with interpolatioN?
  let results = nameArray.map(name => `Mx. ${name} Jingleheimer Schmidt`);
}

titleize(["Mary", "Brian", "Leo", "Shelly Duval"], (names) => {
  names.forEach(name => console.log(name));
});

function Elephant(name, height, tricks){
  this.name = name
  this.height = height
  this.tricks = tricks
  // tricks is an array of tricks in gerund form
}

Elephant.prototype.grow = function(){
  this.height += 12
}

Elephant.prototype.addTrick = function(trick){
  this.tricks.push(trick)
}

Elephant.prototype.play = function() {
  let randomIndex = [Math.floor ( Math.random() * this.tricks.length )]
  `${name} is ${height} inches tall and likes to ${this.tricks[randomIndex]} `
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
  // why doesn't this need a protoype in the function name? 
  console.log(`${elephant.name} is trotting by!`);
};

herd.forEach()
