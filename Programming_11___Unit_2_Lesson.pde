//Static Mode - Still drawing
//Active Mode - Animation

//Built in variables:
// - mouseX, mouseY: (these are coordinates for your mouse pointer)

void setup() {
  size(600,600);
} // End of setup
//curly brackets {} called braces

void draw() {
 // background(225);
  //background(mouseX,mouseY);
  strokeWeight(1);
  //strokeWeight(mouseX);
  //fill(mouseX);
  ellipse(300,300,200,200);
  // ellipse(mouseX,mouseY,200,200);
  //ellipse(300,300,mouseX,mouseY);
  line(300,300,mouseX,mouseY);
} //end of setup

//lesson 2d
