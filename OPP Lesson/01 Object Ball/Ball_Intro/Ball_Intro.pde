/* To Do
 Separating Setup() from draw() from mousePressed()
 Purpose: have individual pong balls functioning.
 
 Also Determine end of game
 */

//Global Variables and Other
Ball[] balls = new Ball[10]; //Not just an array, but an array list
int ballCounter = balls.length - balls.length; // How to get "Zero but use another value"

void setup() {
  fullScreen();
  //
  balls[ballCounter] = new Ball(width, height); 
  balls[ballCounter].gameStart(); //Completes Constructor, teaching opportunity
  //
  ballCounter +=1;
}//End setup()

void draw() {
  background(255);
  for ( int i = 0; i<ballCounter; i++ ) { //Controls each ball
  println("For", i);
    balls[i].ballDraw(); //Variables and Contructor
    balls[i].gamePlay();
  }
}//End draw()

void keyPressed() {
}//End keyPressed

void mousePressed() {
  println(ballCounter);
  if ( ballCounter >= balls.length) { //Game Quit based on ball counting
    exit();
  } else { 
    ballCounter += 1;
  }
  for ( int i = ballCounter-1; i<ballCounter; i++ ) { //Constructor for other balls should not be run
    balls[i] = new Ball(width, height); 
    balls[i].gameStart(); //Completes Constructor, teaching opportunity
  }
}//End mousePressed
