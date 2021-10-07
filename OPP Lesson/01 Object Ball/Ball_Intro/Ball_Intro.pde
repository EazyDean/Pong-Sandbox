//Global Variables and Other
Ball[] balls = new Ball[4]; //Not just an array, but an array list

void setup() {
  size(500, 600);
  balls[0] = new Ball(width, height);

  
} // End Setup()

void draw() {
    balls[0].ballDraw(); //Variables and construstor
  balls[0].gameStart(); //Completes Constructor, teaching opportunity
  balls[0].gamePlay();
} //End Draw()

void keyPressed () {
} //End keyPressed

void mousePressed() {
} //End mousePressed
