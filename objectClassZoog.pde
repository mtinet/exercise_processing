Zoog zoog1;
Zoog zoog2;

void setup() {
  size(600, 400);
  zoog1 = new Zoog(200, 200, 100, 100, 50);
  zoog2 = new Zoog(400, 200, 70, 150, 20);
}

void draw() {
  background(255);
  zoog1.jiggle(2);
  zoog1.display();
  zoog2.jiggle(2);
  zoog2.display();
}


class Zoog {
  float x, y, w, h, eyeSize;
  
  Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }
  
  void jiggle(float speed) {
    x = x + random(-1, 1)*speed;
    y = y + random(-1, 1)*speed;
    
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
  
  void display() {
    ellipseMode(CENTER);
    rectMode(CENTER);
    
    for (float i = y - h/3; i < y + h/2; i += 10) {
      stroke(0);
      line(x - w/4, i, x + w/4, i);
    }
    
    stroke(0);
    fill(175);
    rect(x, y, w/6, h);
    
    stroke(0);
    fill(255);
    ellipse(x, y - h, w, h);
    
    fill(0);
    ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
    ellipse(x + w/3, y - h, eyeSize, eyeSize*2);
    
    stroke(0);
    line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
    line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
  }
}
