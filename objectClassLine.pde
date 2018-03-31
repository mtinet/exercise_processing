HLine h1 = new HLine(20, 2.0);
HLine h2 = new HLine(50, 2.5);


void setup() {
  size(600, 600);
  frameRate(30);
}

void draw() {
  background(51);
  h1.update();
  h2.update();
}

class HLine {
  float ypos, speed;
  
  HLine(float y, float s) {
    ypos = y;
    speed = s;
  }
  
  void update() {
    ypos += speed;
    
    if (ypos > height) {
      ypos = 0;
    }
    stroke(255);
    line(0, ypos, width, ypos);
  }
}


  
