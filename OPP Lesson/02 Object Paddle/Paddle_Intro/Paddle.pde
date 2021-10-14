class Paddle {
  //Variables
  color colour;
  int paddleXLeft, paddleXRight, paddleYLeft, paddleYRight, paddleWidth, paddleHeight;
  int yMove; //Possible Easteregg to move paddles differently requires two vars
  boolean up=false, down=false;

  //Constructor, populates the variables
  Paddle (float width, float height) { //Passsing Geometry
    this.colour = color (int(random(0, 255)), int(random(100, 255)), int(random(200, 255)));
    paddleWidth = int(height*1/80); //no "this" thus no change ever
    paddleXRight = int(width*39/40) - paddleWidth;
    paddleXLeft = int(width*1/40);
    paddleHeight = int(height*1/4);
    this.paddleYLeft = int(height*1/2) - paddleHeight*1/2;
    this.paddleYRight = paddleYLeft; 
    this.up = false;
    this.down = false;
    this.yMove = int(height / height);
  }//End Constructor
  //
  void paddleDraw() {
    //Background here will cover each individual ball
    fill(colour);
    gamePlay(); //Arithmetic Code, Security Feature
    println(paddle.up, paddleYLeft);
    rect (paddleXLeft, paddleYLeft, paddleWidth, paddleHeight);
    rect (paddleXRight, paddleYRight, paddleWidth, paddleHeight);
    fill(0); //Reset fill
  }//End ballDraw
  //
  void gamePlay() {
    // Bouncing Off Left Paddle
    //
    // Bouncing off Right Paddle
    //
    // Moving Left Paddle
    // 
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
  void upGetter() { //Get Keyboard input
    up = true;
  }
  void downGetter() { //Get Keyboard input
    down = true;
  }
  /*void upGetter() { //Get Keyboard input
   up = true;
   }
   void upGetter() { //Get Keyboard input
   up = true;
   }
   */
}//End Ball
