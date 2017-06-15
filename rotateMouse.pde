float theta = 0.0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  translate(100, 100);
  rotateX(map(mouseY, 0, height, 0, TWO_PI));
  rotateY(map(mouseX, 0, width, 0, TWO_PI));
  rectMode(CENTER);
  rect(0, 0, 100, 100);
}
