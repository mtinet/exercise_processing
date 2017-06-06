int x = width;
int y = height;

float radius = 200;

void setup() {
  size(200, 200);
  background(255);
  print(width);
  drawCircle(x, y, radius);
  println(" " + x);
}


void drawCircle(int x, int y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    radius *= 0.75;
    drawCircle(x, y, radius);
  }
}
