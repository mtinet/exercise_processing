Catcher catcher;
Ball ball1;
Ball ball2;


void setup() {
  size(400, 400);
  catcher = new Catcher(32);
  ball1 =new Ball(20);
  ball2 =new Ball(32);
}

void draw() {
  background(255);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
  ball1.move();
  ball2.move();
  
  if (ball1.intersect(ball2)) {
    ball1.highlight();
    ball2.highlight();
  } else {
    ball1.lowlight();
    ball2.lowlight();
  } 
    
  ball1.display();
  ball2.display();  
  
  boolean intersecting = ball1.intersect(ball2);
  if (intersecting) {
    println("The circles are intersecting!");
  }
}



class Ball {
  float r;
  float x, y;
  float xspeed, yspeed;
  color c = color(100, 50);
  
  Ball(float tempR) {
    r = tempR;
    
    x = random(width);
    y = random(height);
    
    xspeed = random(-5, 5);
    yspeed = random(-5, 5);
  }
  
  void highlight() {
    c = color(0, 150);
  }
  
  void lowlight() {
    c = color(100, 50);
  }
  
  void move() {
    x += xspeed;
    y += yspeed;
    
    if (x > width || x < 0) {
      xspeed *= -1;
    }
    
    if (y >height || y < 0) {
      yspeed *= -1;
    }
  }
  
  void display() {
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
  
  boolean intersect(Ball b) {
    float distance = dist(x, y, b.x, b.y);
    if (distance < r + b.r) {
      return true;
    } else {
      return false;
    }
  }
  
}
 
 
class Catcher {
  float r;
  float x;
  float y;
  
  Catcher(float tempR) {
    r = tempR;
    x = 0;
    y = 0;
  }
  
  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  
  void display() {
    stroke(0);
    fill(0);
    ellipse(x, y, r*2, r*2);
  }
}
