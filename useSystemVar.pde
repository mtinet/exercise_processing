void setup() {
  size(200, 200);
}

void draw() {
  background(100);
  stroke(255);
  fill(frameCount/2);
  rectMode(CENTER);
  
  rect(width/2, height/2, mouseX + 10, mouseY + 10);
  
  if (frameCount == 512) {
    frameCount = 0;
  }
}

void keyPressed() {
  println("You pressed " + key);
}
