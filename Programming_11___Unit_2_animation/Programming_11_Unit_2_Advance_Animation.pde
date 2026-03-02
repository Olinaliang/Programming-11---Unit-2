float x;

void setup() {
  size(600, 600);
  x = 0;
}

void draw() {
  background(0);
  x = x + 0.01;
  olinubu(100, 300, 0.5, 10);
  olinubu(500, 300, x, 0);
}

void olinubu (int x, int y, float s, int a) {
  pushMatrix(); //save 
  translate(x, y);
  rotate( radians(a)  );
  scale(s);
  fill(255);

  //Head
  noStroke();
  ellipse(0, -110, 230, 190);
  ellipse(0, -130, 200, 190);

  //Ear
  ellipse(-30, -200, 40, 170);
  ellipse(30, -200, 40, 170);
  fill(255);
  ellipse(-30, -245, 15, 50);
  ellipse(30, -245, 15, 50);

  //Body
  ellipse(0, 20, 180, 240);

  //Leg
  rect(-60, 110, 50, 100);
  rect(10, 110, 50, 100);

  //Eye
  fill(0);
  ellipse(-30, -140, 30, 60);
  ellipse(30, -140, 30, 60);
  fill(255);
  ellipse(-28, -140, 17, 35);
  ellipse(28, -140, 17, 35);

  //Nose
  fill(0);
  ellipse(0, -100, 20, 15);

  //Mouth
  triangle(-40, -60, -40, -80, 40, -70);
  triangle(-10, -65, -20, -30, -30, -65);
  triangle(20, -70, 10, -35, 0, -70);

  //Arm
  triangle(-150, -25, -80, -10, -90, 20);
  triangle(200, 100, 120, 120, 130, 130);
  popMatrix(); //load
}
