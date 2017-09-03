String message = "text along a curve";
PFont f;

float r = 100;

void setup() {
  size(320, 320);
  f = createFont("Georgia", 40, true);
  textFont(f);
  textAlign(CENTER);
}

void draw() {
  background(255);
  
  translate(width/2, height/2);
  noFill();
  stroke(0);
  ellipse(0, 0, r*2, r*2);
  
  float arclength = 0;
  
  for (int i = 0; i < message.length(); i++) {
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);
    
    arclength += w/2;
    
    //호의 시작점부터 180도를 회전시킨 후 그곳에서부터 문장을 시작하게함.
    float theta = PI + arclength / r;
    
    pushMatrix();
    translate(r*cos(theta), r*sin(theta));
    
    //글씨 자체를 회전시키는 부분.
    rotate(theta + PI/2);
    
    fill(0);
    text(currentChar, 0, 0);
    popMatrix();
    arclength += w/2;
  }
}
