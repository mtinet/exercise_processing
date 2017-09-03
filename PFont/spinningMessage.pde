PFont f;
String message = "this text is spinning";
float angle;

void setup() {
  size(200, 200);
  f = createFont("Arial", 20);
}

void draw() {
  background(255);
  fill(0);
  textFont(f);
  translate(width/2, height/2);
  rotate(angle);
  textAlign(CENTER);
  text(message, 0, 0);
  angle += 0.05;
}
