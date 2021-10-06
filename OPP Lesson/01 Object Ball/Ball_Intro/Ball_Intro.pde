//Global Variables and Other
Ball[] balls = new Ball[4]; //Not just an array, but an array list

void setup() {
  fullScreen(displayWidth, displayHeight);
  balls[0] = new Ball(width, height);
  balls[0].ballDraw(); //Variables and construstor
  balls[0].gameStart(); //Completes Constructor, teaching opportunity
  
} // End Setup()

void draw() {
} //End Draw()

void keyPressed () {
} //End keyPressed

void mousePressed() {
} //End mousePressed
