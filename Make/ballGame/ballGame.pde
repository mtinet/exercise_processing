PFont f;

int x = 50;
int y = 300;
int lineX = 0;
int y1 = int(random(height));
int y2 = int(random(height));
int y3 = 0;

int score = 0;
int preScore = 0;
int life = 3;
int lineOver = 0;


void setup(){
  size(600, 600);
  f = createFont("Georgia", 30);
  textFont(f);
  lineX = width-1;
}

void draw() {
  background(255);
  textFont(f);
  
  if (lineX == width) {
    preScore = score;
  }
  
  lineMove(y1, y2);
  ball();
  life();
  score();
  textAlert();
  
  //println(lineX, width, preScore, score);
  //println(lineX, x, y, y1, y2, y3);
}

void ball() {
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
}

void lineMove(int y1, int y2) {
  line(lineX, y1, lineX, y2);
  line(lineX, y1, lineX, y2);
  lineX = lineX - 5;
  
}

void life() {
  if (lineX == 0 && preScore == score) {
    life = life - 1;
  } 
}

void score() {
  if(y1 > y2) {
    y3 = y1;
    y1 = y2;
    y2 = y3;
  }
  
  if (x + 25 > lineX && x - 25 < lineX) {
    if (y + 25 > y1 && y - 25 < y2) {
      score = score + 1;
    }
  }
}



void textAlert() {
  textSize(20);
  fill(255, 0, 0);
  text("SCORE : " + score, width/10, 50);
  text("Line Over : " + lineOver, width/10, 80);
  fill(0, 0, 255);
  text("LIFE : " + life, width*2/3, 50);
  
  if (lineX < 0) {
    lineX = width;
    lineOver = lineOver + 1;
    y1 = int(random(height));
    y2 = int(random(height));
  }
  
  if (life == 0) {
    fill(255, 100, 100);
    textAlign(CENTER);
    textSize(50);
    text("Game Over", width/2, height/2);
    fill(0);
    text("Your Score is " + score + ".", width/2, height/2 + 50);
    noLoop();
    textAlign(LEFT);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - 50;
    }
    if (keyCode == DOWN) {
      y = y + 50;
    }
    if (keyCode == LEFT) {
      x = x - 50;
    }
    if (keyCode == RIGHT) {
      x = x + 50;
    }
  }
}
