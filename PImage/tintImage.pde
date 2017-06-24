PImage momo;
PImage twice;

void setup() {
  size(1080, 960);
  momo = loadImage("1.jpg");
  twice = loadImage("2.jpg");
}

void draw() {
  background(255);
  
  imageMode(CENTER);
  tint(255, mouseX, mouseY);
  image(momo, width/2, height/2);
  
  tint(255, 127);
  image(twice, width/2, height/2);
}
