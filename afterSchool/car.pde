int x = 100;
int y = 100;
int thesize = 64;
int offset = thesize/4;

void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  rectMode(CENTER);  
  stroke(0);
  fill(175);
  rect(x, y, thesize, thesize/2);
  
  fill(0);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);
}
