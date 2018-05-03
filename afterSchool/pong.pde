int x_ball;
int y_ball;

int x_bar;

int speed = 10;

void setup() {
  size(400, 400);
  
  x_ball = width/2;
  y_ball = height/2;
  
  x_bar = width/2;
}

void draw() {
  background(255);
  ball();      
  bar();
}

void keyPressed() {
  if(keyCode == LEFT) {
    x_bar = x_bar - 10;
  }
  if(keyCode == RIGHT) {
    x_bar = x_bar + 10;
  }
  println(x_bar);
}

void ball() {
  fill(50, 100, 100);
  ellipse(x_ball, y_ball, 50, 50);
  x_ball = x_ball + speed;
  if(x_ball > width || x_ball < 0) {
    speed = speed * -1;
  }
}

void bar() {
  rectMode(CENTER);
  fill(200, 100, 100);
  rect(x_bar, height-10, 150, 10);
}
