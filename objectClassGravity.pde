Ball myBall1;
Ball myBall2;
Ball myBall3;
Ball myBall4;

void setup() {
  size(200, 200);
  myBall1 = new Ball(25, 0, 0, 0.1);
  myBall2 = new Ball(75, 0, 3, 0.1);
  myBall3 = new Ball(125, 0, 0, 0.2);
  myBall4 = new Ball(175, 0, 3, 0.2);
}

void draw() {
  background(255);
  myBall1.move();
  myBall1.display();
  myBall2.move();
  myBall2.display();
  myBall3.move();
  myBall3.display();
  myBall4.move();
  myBall4.display();
}



class Ball {
    float x;
    float y;
    float speed;
    float gravity;
    
  Ball(float tempX, float tempY, float tempSpeed, float tempGravity) {
    x = tempX;
    y = tempY;
    speed = tempSpeed;
    gravity = tempGravity;
  }
  
  void display() {
    fill(175);
    stroke(0);
    ellipse(x, y, 10, 10);
  }
  
  void move() {
    y = y + speed;
    speed = speed + gravity;
    
    if(y >height) {
      speed = speed * -0.95;
      y = height;
    }
  }
}
  
