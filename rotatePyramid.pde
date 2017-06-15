float theta = 0.0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  theta += 0.01;
  
  translate(100, 100, 0);
  rotateX(theta);
  rotateY(theta);
  drawPyramid(50);
  
  translate(50, 50, 20);
  drawPyramid(10);
}

void drawPyramid(int t) {
  stroke(0);
  
  fill(150, 0, 0, 127);
  beginShape(TRIANGLES);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex(0, 0, t);
  
  fill(0, 150, 0, 127);
  vertex(t, -t, -t);
  vertex(t, t, -t);
  vertex(0, 0, t);
  
  fill(0, 0, 150, 127);
  vertex(t, t, -t);
  vertex(-t, t, -t);
  vertex(0, 0, t);
  
  fill(150, 0, 150, 127);
  vertex(-t, t, -t);
  vertex(-t, -t, -t);
  vertex(0, 0, t);
  endShape();
}
