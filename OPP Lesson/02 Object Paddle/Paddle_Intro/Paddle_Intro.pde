/* To Do
Copy over prototyped Ball Class, illustrates modular programming & libraries
*/

//Global Variables and Other
Ball[] balls = new Ball[10];
int ballCounter = balls.length - balls.length; 
Paddle paddle;

void setup() {
  balls[ballCounter] = new Ball(width, height); 
  balls[ballCounter].gameStart(); //Completes Constructor, teaching opportunity
  ballCounter +=1;
  size (500, 600); //fullScreen(), displayWidth, displayHeight;
  paddle = new Paddle(width, height); //For the Constructor
  //
}//End setup()

void draw() {
  background(255);
  for ( int i = 0; i<ballCounter; i++ ) { //Controls each ball
  println("For", i);
    balls[i].ballDraw(); //Variables and Contructor
    balls[i].gamePlay();
  paddle.paddleDraw();  
  }
}//End draw()

void keyPressed() {
  if (key == CODED && key == 'W' || key == 'w') paddle.upLeftGetter(); //Security Feature
  if (key == CODED && key == 'S' || key == 's') paddle.downLeftGetter(); //Security Feature
  if (key == CODED && keyCode == UP) paddle.upRightGetter(); //Security Feature
  if (key == CODED && keyCode == DOWN) paddle.downRightGetter(); //Security Feature
}//End keyPressed

void mousePressed() {
  if ( ballCounter >= balls.length) { //Game Quit based on ball counting
    exit(); //Eventually will become a button
  } else { 
    ballCounter += 1;
  }
  for ( int i = ballCounter-1; i<ballCounter; i++ ) { //Constructor for other balls should not be run
    balls[i] = new Ball(width, height); 
    balls[i].gameStart(); //Completes Constructor, teaching opportunity
  }
}//End mousePressed
