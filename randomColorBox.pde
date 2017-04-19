
void setup() {
  size(640, 480);
  background(255);
}

void draw() {
  float r = (int)random(1, 255);
  float g = (int)random(1, 255);
  float b = (int)random(1, 255);
  float a = (int)random(1, 255);

  float posX = (int)random(1, 640);
  float posY = (int)random(1, 480);

  float lineX = (int)random(1, 100);
  float lineY = (int)random(1, 100);

  noStroke();
  fill(r, g, b, a);
  rect(posX, posY, lineX, lineY);
}
