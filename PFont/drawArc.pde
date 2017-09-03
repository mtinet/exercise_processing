PFont f;
float r = 200;
float w = 40;
float h = 40;

void setup() {
  size(640, 640);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);
  noFill();
  stroke(0);
  ellipse(0, 0, r*2, r*2);
  
  int totalBoxes = 20;
  float arclength = 0;
  
  for (int i = 0; i < totalBoxes; i++) {
    //호의 길이
    arclength += w/2;
    
    //각 theta는 호의 길이 / 반지름
    float theta = arclength / r;
    
    pushMatrix();
    translate(r * cos(theta), r * sin(theta));
    rotate(theta);
    fill(0, 100);
    rectMode(CENTER);
    rect(0, 0, w, h);
    popMatrix();
    arclength += w/2;
  }
}
