/* To Do
Copy over prototyped Ball Class, illustrates modular programming & libraries
*/

//Global Variables and Other
Paddle paddle;

void setup() {
  size (500, 600); //fullScreen(), displayWidth, displayHeight;
  paddle = new Paddle(width, height); //For the Constructor
  //
}//End setup()

void draw() {
  background(255);
  println(paddle.up);
  paddle.paddleDraw();
}//End draw()

void keyPressed() {
  if (key == CODED && key == 'W' || key == 'w') {
  paddle.upGetter(); //Security Feature
}
   if (key == CODED && key == 'S' || key == 's') {
   paddle.downGetter(); //Sexcurity Feature
   }
  if (key == CODED && key == UP) {}
  if (key == CODED && key == DOWN) {}
}//End keyPressed

void mousePressed() {
  
}//End mousePressed
