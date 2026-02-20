//Olina Liang
//Animation Lessons
//02/19/2026

int x;

void setup() {
  size(600,600);
}

void draw() {
  background(255);
  ellipse(300,x,200,200);
  x= x + 1;
  if (x>700){
    x=-100;
  }
}
