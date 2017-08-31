String headline = "브리핑 완료하고 RGB LED로 넘어갑니다!!!";
PFont f;
float x;
color c;


void setup() {
  size(1800, 450);
  f = createFont("휴먼중간팸체", 16);
  x = width;
  
}

void draw() {
  background(c);
  
  fill(0);
  textFont(f, 200);
  textAlign(LEFT);
  text(headline, x, 300);
  
  x = x - 10;
  
  float w = textWidth(headline);
  
  if(x < - w) {
    x = width;
  }
}

void mousePressed() {
  c = color(random(255),random(255), random(255));
}  
