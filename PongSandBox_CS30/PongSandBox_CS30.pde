//Global Variables
float ballX, ballY, ballDiameter;
int ballXSpeed, ballYSpeed;
float leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight;
float rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight;
int leftPaddleMove;
int rightPaddleMove;

void setup() {
  size(600, 500);
  ballX = width*1/2;
  ballY = height*1/2;
  ballDiameter = width*1/100;
  ballXSpeed = width/width;
  ballYSpeed = height/height;
  leftPaddleX = width * 1/40;
  leftPaddleHeight = height * 1/2;
  leftPaddleY = (height * 1/2) - leftPaddleHeight*1/2;
  leftPaddleWidth = width * 1/40;
  leftPaddleMove = width * 0;
  rightPaddleX = width * 18/20;
  rightPaddleHeight = height * 1/2;
  rightPaddleY = (height * 1/2) - rightPaddleHeight*1/2;
  rightPaddleWidth = width * 1/40;
  rightPaddleMove = width * 0;
  //
  ellipse (ballX, ballY, ballDiameter, ballDiameter);
  rect(leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight);
  rect(rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight);
  println(leftPaddleY);
  println(rightPaddleY);
  
}

void draw() {
   background (0);
  ballX = ballX + ballXSpeed;
  ballY = ballY + ballYSpeed;
  //
  if (ballX > width || ballX < width*0) ballXSpeed = ballXSpeed * -1; 
  if (ballX > width) ballX = width;
  if (ballX < width*0) ballX = width*0;
  if (ballY > height || ballY < height*0) ballYSpeed = ballYSpeed * -1; 
  if (ballY > height) ;
  if (ballY < height*0) ballY = height*0 ;
  rect (leftPaddleX, leftPaddleY, leftPaddleWidth, leftPaddleHeight);
  rect (rightPaddleX, rightPaddleY, rightPaddleWidth, rightPaddleHeight);
  ellipse (ballX, ballY, ballDiameter, ballDiameter);
  }
  
  void keyPressed() {
    // Left Paddle Movment, using W-S keys
    if (key == CODED) {
     if (key == CODED) {
    if (keyCode == UP) {
      leftPaddleY = leftPaddleY - 1;
    }
    if (keyCode == DOWN) leftPaddleY = leftPaddleY + 1; 
    }
    }
  }
  
  
