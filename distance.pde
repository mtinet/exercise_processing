void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  fill(0);
  ellipse(100, 100, 5, 5);
  
  stroke(255, 0, 0);
  line(100, 100, mouseX, mouseY);
  float d = dist(100, 100, mouseX, mouseY);
  println(d);
}
