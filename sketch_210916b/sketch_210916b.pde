//Global Variables
float ballX, ballY, ballDiameter;
int ballXSpeed, ballYSpeed;

void setup() {
  size(600, 500);
  ballX = width*1/2;
  ballY = height*1/2;
  ballDiameter = width*1/100;
  ballXSpeed = width/width;
  ballYSpeed = height/height;
  //
  ellipse (ballX, ballY, ballDiameter, ballDiameter);
}

void draw() {
  ballX = ballX + ballXSpeed;
  ballY = ballY + ballYSpeed;
  //
  if (ballX > width || ballX < width*0) ballXSpeed = ballXSpeed * -1; {
  if (ballX > width) ballX = width;
  if (ballX < width*0) ballX = width*0;
  if (ballY > height || ballY < height*0) ballYSpeed = ballYSpeed * -1; 
  if (ballY > height) ;
  if (ballY < height*0) ballY = height*0 ;
  }
  //
  ellipse (ballX, ballY, ballDiameter, ballDiameter);
  }
