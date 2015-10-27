class Dino {

  //Globals for Dino

  //Dino variables
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino

  //Constructor

  Dino (float Y_, float S_, float A_) {
    dinoY = Y_;
    dinoS = S_;
    dinoA = A_;
  }

  void update (float gravity) {

    // draw the dino
    ellipse(50, dinoY, 60, 60);


    //move the dino
    dinoA = dinoA + gravity;  //Change acceleration based on gravity
    dinoS = dinoS + dinoA;    //Change speed based on acceleration
    dinoY = dinoY + dinoS;    // Change speed based on location

    if (dinoY > 170) {
      dinoA = 0;
      dinoS = 0;
      dinoY = 170;

      //status updates
      fill(0);
      textSize(12);
      text("dinoY is " + dinoY, 150, 25);
      text("dinoS is " + dinoS, 150, 50);
      text("dinoA is " + dinoA, 150, 75);
      text("distance is " + distance, 150, 100);
    }
  }
  
}
//End class