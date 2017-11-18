int posX = 0;
int posY = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(random(255));
  ellipse(posX, posY, 50, 50);
  saveFrame("output/image-###.png");
  posX += 10;
  posY += 10;
}
