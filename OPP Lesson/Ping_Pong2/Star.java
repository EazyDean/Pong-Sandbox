/* Color is not a pure Java option, only Processing-Java
 requires additional libraries Processing loads always
 Note: Pure Java is best for text-based and arithmetic
 */
//
class Star {
  float x, y, diameter, targetX, targetY;
  //
  Star(float xParameter, float yParameter, float diameterParameter) {
    x = xParameter;
    y = yParameter;
    diameter = diameterParameter;
    //targetX&Y must be made beginning values or introduces bug
    targetX = x;
    targetY = y;
  }//End Ball Constructor
  //
  void draw() {
    step();
  }//End draw()
  //
  void step() {
    if (x < targetX) {
      x++;
    } else {
      x--;
    }
    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  }//End step()
  //
}//End Ball
