String info = "A long long time ago\nIn a galaxy far far away\n";
PFont f;
float y = 0;

void setup() {
  size(1200, 600, P3D);
  f = createFont("Arial", 60);
}

void draw() {
  background(255);
  fill(0);
  translate(width/2, height/2);
  rotateX(radians(30));
  textFont(f);
  textAlign(CENTER);
  text(info, 0, y);
  y--;
}
