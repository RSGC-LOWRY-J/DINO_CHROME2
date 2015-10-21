//Noice
// global variables (can be used everywhere below)

Cactus c1;       //cactus object

//Dino variables
float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino

//Main
float gravity;   // gravity
float distance;  //Track distance between dino and cactus


// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  c1 = new Cactus (900, 175, -1, -2);



  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = 0;

  // set gravity
  gravity = 0.030;
}

// this function runs repeatedly
void draw() {

  //Speed of game
  frameRate(100);

  c1.update (gravity);

  // background clears each time the program loops
  background(255);



  //status updates
  fill(0);
  textSize(12);
  text("dinoY is " + dinoY, 150, 25);
  text("dinoS is " + dinoS, 150, 50);
  text("dinoA is " + dinoA, 150, 75);
  text("distance is " + distance, 150, 100);

  //determine wether there is a hit
  //float a = dinoY -175;
  //float b = 50 - x1;
  //distance = sqrt( pow(a, 2) + pow(b, 2) );

  //move the dino
  dinoA = dinoA + gravity;  //Change acceleration based on gravity
  dinoS = dinoS + dinoA;    //Change speed based on acceleration
  dinoY = dinoY + dinoS;    // Change speed based on location

  if (dinoY > 170) {
    dinoA = 0;
    dinoS = 0;
    dinoY = 170;
  }

  //determine a hit
  if (distance < (30 + 25) ) {
    textSize(50);
    text("<3", 100, 100);
  }

  //Stop dino when it hits the ground
  if (dinoY > 170) {  //bottom of the screen (200) - the radius (30)
    dinoA = 0;
    dinoS = 0;
  }

  // draw the dino
  ellipse(50, dinoY, 60, 60);
}



// respond to keypress 

void keyPressed() {

  dinoS = -7   ;
}