float time = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  
  noStroke();
  fill(0);
  
  for (int i = 0; i <= 200; i++) {
    float y = noise(time) * height;
    ellipse(i , y, 4, 4);
    time += 0.01;
  }
}
