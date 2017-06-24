PImage head;
float x, y;
float rot;
float speedX;
float speedY;

void setup() {
  size(640, 480);
  
  head = loadImage("20160715093408267.jpg");
  x = 0;
  y = width/2;
  rot = 0;
  speedX = 2;
  speedY = 2;
}

void draw() {
  background(255);
  
  translate(x, y);
  rotate(rot);
  imageMode(CENTER);
  image(head, 0, 0, 320, 240);
  
  x += speedX;
  y += speedY;
  rot += 0.01;
  if (x > width || x < 0) {
    speedX = -speedX;    
  }
  if (y > height || y < 0) {
    speedY = -speedY;    
  }
  
}
