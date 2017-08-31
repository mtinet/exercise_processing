String headline[] = {"얼른 테스트 해보고 나서 브리핑해라!!!!", "바보", "해보"};
PFont f;
float x;
color c;
int index = 0;


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
  text(headline[index], x, 300);
  
  x = x - 10;
  
  float w = textWidth(headline[index]);
  
  if(x < - w) {
    x = width;
    index = (index + 1) % headline.length;
  }
}

void mousePressed() {
  c = color(random(255),random(255), random(255));
}  
