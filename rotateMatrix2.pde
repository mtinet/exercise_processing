Rotater[] rotaters;

void setup() {
  size(200, 200);
  rotaters = new Rotater[20];
  
  for (int i = 0; i < rotaters.length; i++) {
    rotaters[i] = new Rotater(random(width), random(height), random(-0.1, 0.1), random(48));
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < rotaters.length; i++) {
    rotaters[i].spin();
    rotaters[i].display();
  }
}

class Rotater {
  float x, y;
  float theta;
  float speed;
  float w;
  
  Rotater(float tempX, float tempY, float tempSpeed, float tempW) {
    x = tempX;
    y = tempY;
    theta = 0;
    speed = tempSpeed;
    w = tempW;
  }
  
  void spin() {
    theta += speed;
  }
  
  void display() {
    rectMode(CENTER);
    stroke(0);
    fill(0, 100);
    pushMatrix();
    translate(x, y);
    rotate(theta);
    rect(0, 0, w, w);
    popMatrix();
  }
}
