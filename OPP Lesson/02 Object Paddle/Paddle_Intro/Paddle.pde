class Paddle {
  //Variables
  color colour;
  int paddleXLeft, paddleXRight, paddleYLeft, paddleYRight paddleWidth, paddleHeight;
  int yMove; //Possible Easteregg to move paddes differently requires two vars
  boolean up=false, down=false;
  
  //Constructor, populates the variables
  Paddle (float width, float height) { //Passsing Geometry
    this.colour = color (int(random(0,255)), int(random(100,255)), int(random(200,255)));
    paddleWidth = int(height*1/80); //no "this" thus no change ever
    paddleXLeft = int(width*1/40);
    paddleXRight = int(width*39/40) - paddleWidth;
    paddleHeight = int(height*1/4);
    this.paddleYLeft = int(height*1/2) - paddleHeight*1/2;
    this.paddleYRight = paddleYLeft; 
    this.up = false;
    this.down = false;
    this.yMove = int (height / height);
  }//End Constructor
  //
  void paddleDraw() {
    //Background here will cover each individual ball
    fill(colour);
    gamePlay(); //Arithmetic Code, Security
    rect (paddleXLeft, paddleY, paddleWidth, paddleHeight);
    rect (paddleXRight, paddleY, paddleWidth, paddleHeight);
    fill(0); //Reset fill
  }//End ballDraw
  //
  void gamePlay() {
    //Bouncing Off Left Paddle
    //
    // Bouncing off Right Paddle
    //
    // Moving Left Paddle
    // Up: paddleYLeft -= yMove, Down: paddleYLeft += yMove
    if ( up == true && down == false) {
      paddleYLeft -= yMove;
    }
    if (up == false && down == true) {
      paddleYLeft += yMove;
    }
    // Reminder: set all booleans to false
    //
    // Moving Right Paddle
    // Up: paddleYRight -= yMove, paddleYRight += yMove
    // Reminder: set all booleans to false
    //
    // Redrawing Paddle if too High
    //
    // Redrawing Paddle if too Low
    //
  }//End gamePlay
  //
  // Getters and Setters
  void upGetter() { //Get keyboard input
    up = true;// Getters and Setters
  }
  void upGetter() { //Get Keyboard input
    up = true;
  }
  void downGetter() { //Get Keyboard input
    down = true;
  }
}
  /*void upGetter() { //Get Keyboard input
    up = true;
  }
  void upGetter() { //Get Keyboard input
    up = true;
