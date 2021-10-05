class Ball {
  //Variables
  int ballX, ballY, ballMoveX, ballMoveY, directionX, directionY;
  int ballSpeedX, ballSpeedY;
  int ballStartX, ballStartY, ballDiameter; //Will be final
  color colour;
  int scorePlayer1, scorePlayer2;
  Boolean ballXGoal;
  //
  //int ballCount = 5; //requires pure java class for true static variables
  //needs to be coded first in processing
  //
  //Constructor, populates the variables
  Ball(float width, float height) { //Passing Geometry
    ballStartX = int(width/2); //Will begin as one variable, but might change b/c easter egg
    ballStartY = int(height/2);  //See above
    this.ballX = ballStartX;
    this.ballY = ballStartY;
    ballXGoal = ;
    ballDiameter = ; //Will soon need a procedure for this or a choice of code
    ballSpeedX = ;
    ballSpeedY = ;
    colour = ;
  }//End Constructor
  //
  void ballDraw() {
  fill(colour);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  fill(0); //Reset fill
  }//End ballDraw
  //
  void gameStart() {}//End gameStart
  //
  void gamePlay() {}//End gamePlay
}//End Ball
