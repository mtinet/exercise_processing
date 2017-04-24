void setup() {
  size(600, 400);
}

void draw() {
  if (mouseX < width/3) {
    background(255);
    println(mouseX);
  } else if(mouseX < 2*width/3) {
    background(127);
    println(mouseX);
  } else {
    background(0);
    println(mouseX);
  }
}
