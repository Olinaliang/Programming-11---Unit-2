int x;
int y;

void setup() {
  size(600,600);
}

void draw() {
  background(255);
  ellipse(y,300,x,x);
  x=x+1;
  y=y+5;
  if (y>700){
    y=0;
    x=0;
  }
}
