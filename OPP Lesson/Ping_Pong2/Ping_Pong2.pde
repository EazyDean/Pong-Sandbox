/* To Do - Debugging
 Ball line# 54 
 */

//Global Variables and Other
Paddle paddle;
//
// From Ball_Intro Main Program
int starNumbers = 100; //Will be a static variable, encapsulated
Star[] stars = new Star[100];
Ball[] balls = new Ball[10]; //Not just an array, but an array list
int ballCounter = balls.length - balls.length; // How to get "Zero but use another value"
Boolean startMouse=true, startKeyboard=false;

void setup() {
  fullScreen(); //fullScreen(), displayWidth, displayHeight;
  //
  createStars();
  println(stars.length);
  paddle = new Paddle(width, height); //For the Constructor
  balls[ballCounter] = new Ball(width, height); 
  ballCounter +=1;
  fullScreen(); 
  
  //
}//End setup()

void draw() {
  background(0, 0);
   paddle.paddleDraw();
  for ( int i = 0; i<ballCounter; i++ ) { //Controls each ball
    balls[i].ballDraw(); //Variables and Contructor
    balls[i].gamePlay();
    balls[i].directionYSetter(paddle.paddleXLeftGetter(), paddle.paddleYLeftGetter(), paddle.paddleXRightGetter(), paddle.paddleYRightGetter(), paddle.paddleWidthGetter(), paddle.paddleHeightGetter());
  }
  for (int i=0; i<stars.length; i++) {
      ellipse(stars[i].x, stars[i].y, stars[i].diameter, stars[i].diameter);
    }//End FOR
}//End draw()

void keyPressed() {
  createStars();
  if (key == CODED && key == 'W' || key == 'w') paddle.upLeftGetter(); //Security Feature
  if (key == CODED && key == 'S' || key == 's') paddle.downLeftGetter(); //Security Feature
  if (key == CODED && keyCode == UP) paddle.upRightGetter(); //Security Feature
  if (key == CODED && keyCode == DOWN) paddle.downRightGetter(); //Security Feature
}//End keyPressed

void mousePressed() {
  // For balls
  if ( ballCounter >= balls.length ) { //Game Quit based on ball counting
    exit(); //Eventually will become a button
  } else { 
    ballCounter += 1; //Note: sequentially, this incrementing creates a problem for the next for loop
    // Thus, the FOR Loop deals with the difference between human and computer numbering.
  }
  for ( int i = ballCounter-1; i<ballCounter; i++ ) { //Constructor for other balls should not be run
    balls[i] = new Ball(width, height);
  }
  //
}//End mousePressed
