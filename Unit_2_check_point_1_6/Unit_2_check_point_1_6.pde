int x;
int y;

void setup() {
  size(600,600);
  x=300;
  y=300;
}

void draw() {
  background(255);
  ellipse(170,x,170,170);
  x=x+1;
  if(x>700){
    x=-100;
  }
  ellipse(430,y,170,170);
  y=y-1;
  if(y<-100){
    y=700;
  }
}
  
