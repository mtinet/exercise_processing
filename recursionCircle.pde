int x = width;
int y = height;

float radious = 200;

void setup() {
  size(200, 200);
  background(255);
  print(width);
  drawCircle(x, y, radious);
  println(" " + x);
}


void drawCircle(int x, int y, float radious) {
  ellipse(x, y, radious, radious);
  if (radious > 2) {
    radious *= 0.75;
    drawCircle(x, y, radious);
  }
}
