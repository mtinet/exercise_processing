int x;

void setup() {
  size(600, 400);
  x = width/2;
}

void draw() {
  background(255);
  rectMode(CENTER);
  fill(200, 100, 100);
  rect(x, height-10, 150, 10);
}
  
void keyPressed() {
  if(keyCode == LEFT) {
    x = x - 10;
  }
  if(keyCode == RIGHT) {
    x = x + 10;
  }
  println(x);
}
