Ball[] balls = new Ball[100];

float gravity = 0.1;

void setup() {
  size(600, 400);
  for(int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(600), random(400), random(30));
  }
  
}

void draw() {
  background(100);
  for(int i = 0; i < balls.length; i++) {
    balls[i].gravity();
    balls[i].move();
    balls[i].display();
  }
}

class Ball {
  float x;
  float y;
  float speed;
  float w;
  
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }
  
  void gravity() {
    speed = speed + gravity;
  }
  
  void move() {
    y = y + speed;
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
  
  void display() {
    fill(255);
    noStroke();
    ellipse(x, y, w, w);
  }
}
