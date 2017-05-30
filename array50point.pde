int[] xpos = new int[50];
int[] ypos = new int[50];

void setup() {
  size(600, 400);
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  background(255);
  xpos[xpos.length - 1] = mouseX;
  ypos[ypos.length - 1] = mouseY;
  
  for (int i = 0; i < xpos.length - 1; i++) {
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }
  
  for ( int i = 0; i < xpos.length; i++) {
    stroke(0);
    fill(175);
    ellipse(xpos[i], ypos[i], 32, 32);
  }
}
