int size = 30;

void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  for (int i = 0; i < 600; i += size) {
    for ( int j = 0; j < 600; j += size) {
      color c = color(random(255), random(255), random(255));
      fill(c);
      noStroke();
      rect(i, j, 20, 20);
    }
  }
}
