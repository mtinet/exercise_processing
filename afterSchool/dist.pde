float dx;
float dy;
float d;

void setup() {
  size(600, 400);
  background(51);
}

void draw() {
  dx = mouseX;
  dy = mouseY;
  d = sqrt(dx*dx + dy*dy);
  stroke(255);
  strokeWeight(4);
  point(dx, dy);
  println(d);
}
