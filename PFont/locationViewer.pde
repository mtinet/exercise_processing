PFont f;

void setup() {
  size(600, 400);
  f = createFont("Georgia", 16);
}

void draw() {
  background(255);
  ellipse(mouseX, mouseY, 10, 10);
  textFont(f, 16);
  fill(0);
    
  text((mouseX + ", " + mouseY), mouseX + 20, mouseY + 5);
}
