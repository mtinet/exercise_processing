Car myCar1;
Car myCar2;


void setup() {
  size(600, 400);
  myCar1 = new Car(color(255, 0, 0), 100, 50, 5);
  myCar2 = new Car(color(0, 255, 0), 0, 200, 2);
}

void draw() {
  background(0);
  myCar1.display(50, 30);
  myCar1.drive();
  myCar2.display(100, 20);
  myCar2.drive();
}

class Car {
  color c;
  int xpos;
  int ypos;
  int xspeed;
  
  Car(color tempC, int tempXpos, int tempYpos, int tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  void display(int x, int y) {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, x, y);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
