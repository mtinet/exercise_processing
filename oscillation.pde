float theta = 0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  float x = map(sin(theta), -1, 1, 0, 200);
  
  theta += 0.05;
  
  fill(0);
  stroke(0);
  line(width/2, 0, x, height/2);
  ellipse(x, height/2, 16, 16);
}
