PFont f;

String typing = "";
String saved = "";

void setup() {
  size(300, 200);
  f = createFont("Arial", 16);
}

void draw() {
  background(255);
  int indent = 25;
  
  textFont(f);
  fill(0);
  
  text("Click in this sketch and type.\nHit return to save what you typed.", indent, 40);
  text(typing, indent, 90);
  text(saved, indent, 130);
}

void keyPressed() {
  if (key == '\n') {
    saved = typing;
    typing = "";
  } else {
    typing = typing + key;
  }
}
