float time = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  noStroke();
  fill(0);
  
  for (int i = 0; i <= 20; i++) {
    float y = noise(time) * height;
    ellipse(i * 10, y, 16, 16);
    time += 0.05;
  }
}
