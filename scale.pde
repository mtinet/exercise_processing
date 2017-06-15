float r = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  
  translate(width/2, height/2);
  
  scale(r);
  
  stroke(255);
  fill(100);
  rectMode(CENTER);
  rect(0, 0, 10, 10);
  
  r +=0.02;
}
