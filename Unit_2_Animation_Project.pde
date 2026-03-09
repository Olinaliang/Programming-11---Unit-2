float x = 200;
float y = 200;
float xspeed = 2;
float yspeed = 2;
float angle = 0;

float bx = 100;
float by = 100;

float cx = 500;
float cy = 300;

void setup() {
  size(600, 400);
}

void draw() {
  background(200, 230, 255);

  //Big spider
  x = x + xspeed;
  y = y + yspeed;

  if (x > 600) {
    x = 0;
  }

  if (y > 400) {
    y = 0;
  }

  angle = angle + 0.05;
  drawSpider(x, y, 1);

  // Baby Spider
  bx = bx + 1;
  by = by + 1;

  if (bx > 600) {
    bx = 0;
  }

  if (by > 400) {
    by = 0;
  }

  drawSpider(bx, by, 0.4);

  //Baby spider 2
  cx = cx + 1;
  cy = cy - 1;

  if (cx > 600) {
    cx = 0;
  }

  if (cy < 0) {
    cy = 400;
  }

  drawSpider(cx, cy, 0.4);
}

void drawSpider(float x, float y, float s) {

  pushMatrix();

  translate(x, y);
  rotate(angle);
  scale(s);

  fill(50, 0, 50);
  noStroke();
  ellipse(0, 0, 40, 40);

  fill(100, 0, 100);
  ellipse(0, -25, 25, 25);

  fill(255, 0, 0);
  ellipse(-5, -28, 6, 6);
  ellipse(5, -28, 6, 6);

  stroke(0, 100, 0);
  strokeWeight(3);

  line(-20, -10, -45, -30);
  line(-20, -5, -50, -5);
  line(-20, 5, -50, 10);
  line(-20, 10, -45, 30);

  line(20, -10, 45, -30);
  line(20, -5, 50, -5);
  line(20, 5, 50, 10);
  line(20, 10, 45, 30);

  popMatrix();
}
