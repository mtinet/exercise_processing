void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  drawCar(100, 100, 64, color(200, 200, 0));
  drawCar(50, 75, 32, color(0, 200, 100));
  drawCar(80, 175, 40, color(200, 0, 0));
}
  

void drawCar(int x, int y, int thesize, color c) {
  int offset = thesize/4;
  rectMode(CENTER);
  stroke(200);
  fill(c);
  rect(x, y, thesize, thesize/2);
  
  fill(200);
  rect(x - offset, y - offset, offset, offset/2);
  rect(x + offset, y - offset, offset, offset/2);
  rect(x - offset, y + offset, offset, offset/2);
  rect(x + offset, y + offset, offset, offset/2);
}
