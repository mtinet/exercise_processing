
void setup() {
  size(640, 480);
  rectMode(CENTER);
}

void draw() {
  background(200);
  rect(mouseX, mouseY, 50, 50);
}

void keyPressed() {
  if (key == 'b') {
    for(int i = 0; i < 250; i++){
      line(mouseX, mouseY-i, mouseX, mouseY-20-i);
    }
  } 
}
