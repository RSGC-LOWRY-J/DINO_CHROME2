//Noice
// global variables (can be used everywhere below)

Cactus c1;         //cactus obj
Dino d1;           //dino obj

//Main
float gravity;   // gravity
float distance;  //Track distance between dino and cactus


// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  c1 = new Cactus (900, 175, -1, -2);

  d1 = new Dino (170, 0, 0);


  // set gravity
  gravity = 0.030;

  //Speed of game
  frameRate(100);
}

// this function runs repeatedly
void draw() {


  background(255, 200, 100);
  
  c1.update(gravity);
  //Update dino
  d1.update(gravity);



}

// respond to keypress 
//void keyPressed() {

// dinoS = -7   ;