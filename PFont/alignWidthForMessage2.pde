PFont f; 
String txt = " Each character is not writeen individually.";
int x = 10;

void setup() {
  size(1200, 400);
  f = createFont("Arial", 20);
  frameRate(1);
}

void draw() {
  background(255);
  fill(0);
  textFont(f);    
  println(txt.length());  
  for (int i = 0; i < txt.length(); i++) {
    textSize(random(12, 36));
    text(txt.charAt(i), x, height/2);
    
    x += textWidth(txt.charAt(i));
    
  }
  if ( x > txt.length()) {
    x = 10;
  }
}
