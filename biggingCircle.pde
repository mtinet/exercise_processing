int circleX = 100;
int circleY = 100;
int cirlceSize = 0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(mouseX, mouseY, cirlceSize, cirlceSize);
  
  if (cirlceSize < 200) {
    cirlceSize++;
  } 
  else {
    cirlceSize = 0;
  }
}
