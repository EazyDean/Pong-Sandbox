class Ball {
  //Variables
  int ballX, ballY, ballMoveX, ballMoveY, directionX=0, directionY=0;
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
    this.ballXGoal = false;
    ballDiameter = int(width/70); //Will soon need a procedure for this or a choice of code
    ballSpeedX = int( random (1, 5) ); //Not best practice to repeat code, but OK
    ballSpeedY = int( random (1, 5) ); //Here b/c "next time"
    colour = color(int( random(50, 200),g,b), int( random(50, 200),g,b), int( random(50, 200),g,b) );
  }//End Constructor
  //
  void ballDraw() {
  fill(colour);
  ellipse(ballX, ballY, ballDiameter, ballDiameter);
  fill(0); //Reset fill
  }//End ballDraw
  //
  void gameStart() { //Complete the ball constructor, should be combined with speed
  while (directionX == 0){
    directionX = int (random (-2, 2) );
  } //End WHILE for directionX
  while (directionY == 0){
    directionY = int (random (-2, 2) );
  } //End WHILE for directionY
  }//End gameStart
  //
  void gamePlay() {}//End gamePlay
}//End Ball
