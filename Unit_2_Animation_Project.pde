int x = 200;
int y = 200;
int vx = 2;
int vy = 2;

int bx = 100;
int by = 100;
int bvx = 1;
int bvy = 1;

int cx = 500;
int cy = 300;
int cvx = 1;
int cvy = -1;

float angle = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(200, 230, 255);

  // Big spider
  x = x + vx;
  y = y + vy;
  if (x > 600) vx = -2;
  if (x < 0) vx = 2;
  if (y > 400) vy = -2;
  if (y < 0) vy = 2;
  drawSpider(x, y, 1);

  // Baby spider
  bx = bx + bvx;
  by = by + bvy;
  if (bx > 600) bvx = -1;
  if (bx < 0) bvx = 1;
  if (by > 400) bvy = -1;
  if (by < 0) bvy = 1;
  drawSpider(bx, by, 0.4);

  // Baby spider 2
  cx = cx + cvx;
  cy = cy + cvy;
  if (cx > 600) cvx = -1;
  if (cx < 0) cvx = 1;
  if (cy > 400) cvy = -1;
  if (cy < 0) cvy = 1;
  drawSpider(cx, cy, 0.4);

  angle = angle + 0.05;
}

void drawSpider(int sx, int sy, float s) {
  pushMatrix();
  translate(sx, sy);
  rotate(angle);
  scale(s);

  // Spider body
  fill(50, 0, 50);
  noStroke();
  ellipse(0, 0, 40, 40);

  // Spider head
  fill(100, 0, 100);
  ellipse(0, -25, 25, 25);

  // Eyes
  fill(255, 0, 0);
  ellipse(-5, -28, 6, 6);
  ellipse(5, -28, 6, 6);

  // Legs
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
