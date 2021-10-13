class Paddle {
  //Variables
  color colour;
  int paddleXLeft, paddleXRight, paddleY, paddleWidth, paddleHeight;
  
  //Constructor, populates the variables
  Paddle (float width, float height) { //Passsing Geometry
    this.colour = color (int(random(0,255)), int(random(100,255)), int(random(200,255)));
    paddleWidth = int(height*1/80); //no "this" thus no change ever
    paddleXRight = int(width*39/40) - paddleWidth;
    paddleXLeft = int(width*1/40);
    paddleHeight = int(height*1/4);
    this.paddleY = int(height*1/2) - paddleHeight*1/2;
  }//End Constructor
  //
  void paddleDraw() {
    //Background here will cover each individual ball
    fill(colour);
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
    //
    // Moving Right Paddle
    //
    // Redrawing Paddle if too High
    //
    // Redrawing Paddle if too Low
    //
  }//End gamePlay
  //
}//End Ball
