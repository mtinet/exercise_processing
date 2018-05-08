int x = 100;
int y = 200;

PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully


void setup() {
  size(400, 400);
  font = loadFont("휴먼명조-32.vlw");
}

void draw() {
  background(30, 100, 150);
  strokeWeight(10);  // Beastly
  stroke(200, 100, 50);
  fill(100, 40, 200, 70);
  ellipse(x, y, 200, 200);
  x = x + 1;
  fill(255);
  textFont(font, 32);
  text("x값은? = " + x + "입니다.", 10, 90); 
  println("x값은? = " + x + "입니다.");
}
