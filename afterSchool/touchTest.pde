color cKey;
color cMouse;

void setup() {
  fullScreen();
  background(255);
}

void draw() {
  noCursor();
  fill(cMouse);
  noStroke();
  ellipse(mouseX, mouseY, 50, 50);
}

void keyPressed(){
  cKey = color(random(255), random(255), random(255));
  background(cKey);
}

void mouseClicked(){
  cMouse = color(random(255), random(255), random(255));
}
