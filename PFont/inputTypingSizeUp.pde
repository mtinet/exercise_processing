PFont f;

String typing = "";
String saved = "";

int firstLine = 40;
int addLine = 150;

void setup() {
  size(800, 400);
  f = createFont("Arial", 50);
}

void draw() {
  background(255);
  int indent = 25;
  
  textFont(f);
  fill(0);
  
  text("Click in this sketch and type. \nHit return to save what you typed.", indent, firstLine);
  text(typing, indent, firstLine + addLine);
  text(saved, indent, firstLine + addLine*2);
}

void keyPressed() {
  if (key == '\n') {
    saved = typing;
    typing = "";
  } else {
    typing = typing + key;
  }
}
