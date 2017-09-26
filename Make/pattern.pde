int x = 0;
int y = 0;
int spacing = 20;

void setup() {
  size(400, 400);
  background(0);
}

void draw() {
  stroke(255);
  if (random(1) < 0.5) {
    noStroke();
    fill(255, 0, 0);
    rect(x, y, spacing, spacing);
    //line(x, y, x + spacing, y + spacing);
  } else {
    noStroke();
    fill(0);
    rect(x, y, spacing, spacing);
    //line(x, y + spacing, x + spacing, y);
  }
  x = x + spacing;
  if ( x > width) {
    x = 0;
    y = y + spacing;
  }
  if ( y > height) {
    y = 0;
  }
}
