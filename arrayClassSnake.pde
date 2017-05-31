Snake mySnake;

void setup() {
  size(600, 400);
  mySnake = new Snake();
}

void draw() {
  background(255);
  mySnake.move();
  mySnake.circle();
}

class Snake {
  
  int[] xpos = new int[50];
  int[] ypos = new int[50];
  
  Snake() {
    for (int i = 0; i < xpos.length; i++) {
      xpos[i] = 0;
      ypos[i] = 0;
    }
  }
  
  void move() {
    xpos[xpos.length - 1] = mouseX;
    ypos[ypos.length - 1] = mouseY;
    
    for (int i = 0; i < xpos.length - 1; i++) {
      xpos[i] = xpos[i + 1];
      ypos[i] = ypos[i + 1];
    }
  }
  
  void circle() {
    
    for ( int i = 0; i < xpos.length; i++) {
      noStroke();
      fill(255 - (i * 5));
      ellipse(xpos[i], ypos[i], i, i);
    }
  }
}
