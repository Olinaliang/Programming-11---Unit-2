//define your own variabales
int y;

void setup(){
  size(600,600);
  y=0; //set the starting value
}

void draw(){
  background(y);
  ellipse(300,y,200,200);
  y= y + 5;
}
