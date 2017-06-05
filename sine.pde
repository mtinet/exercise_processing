float theta = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  theta += 0.02;
  
  noStroke();
  fill(0);
  
  float x = theta;
  println(x);
  
  for (int i = 0; i <= 20; i++) {
    float y = map(sin(x), -1, 1, 0, height);
    ellipse(i * 10, y, 16, 16);
    x += 0.2;
  }
}
