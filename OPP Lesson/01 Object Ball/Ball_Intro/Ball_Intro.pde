/* To Do
Separating Setup() from draw() from mousePressed()
Purpose: have individual pong balls functioning.
Also Determine end of game
*/


//Global Variables and Other
Ball[] balls = new Ball[4]; //Not just an array, but an array list

void setup() {
  fullScreen();
  for ( int i = 0; i<balls.length; i++ ) { //Constrructor
    balls[i] = new Ball(width, height); 
    balls[i].gameStart(); //Completes Constructor, teaching opportunity
  }
  
}//End setup()

void draw() {
  for ( int i = 0; i<balls.length; i++ ) { //Controls each ball
    balls[i].ballDraw(); //Variables and Contructor
    balls[i].gamePlay();
  }
  
  
}//End draw()

void keyPressed() {
}//End keyPressed

void mousePressed() {
  for ( int i = 0; i<balls.length; i++ ) { //Constrructor
    balls[i] = new Ball(width, height); 
    balls[i].gameStart(); //Completes Constructor, teaching opportunity
  }
  
}//End mousePressed
