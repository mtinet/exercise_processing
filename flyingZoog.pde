float zoogX;
float zoogY;

float eyeR;
float eyeG;
float eyeB;

void setup() {
  size(200, 200);
  zoogX = width/2;
  zoogY = height + 100;
}

void draw() {
  background(255);
  
  //ellipses, rects를 Center모드로
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Zoog 몸체 그리기
  stroke(0);
  fill(150);
  rect(zoogX, zoogY, 20, 100);
  
  //Zoog 머리 그리기
  fill(255);
  ellipse(zoogX, zoogY-30, 60, 60);
  
  //Zoog 눈 그리기
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  
  fill(eyeR, eyeG, eyeB);
  ellipse(zoogX-19, zoogY-30, 16, 32);
  ellipse(zoogX+19, zoogY-30, 16, 32);
  
  //Zoog 다리 그리기
  stroke(150);
  line(zoogX-10, zoogY+50, zoogX-10, height);
  line(zoogX+10, zoogY+50, zoogX+10, height);
  
  zoogY = zoogY - 1;
  
}
