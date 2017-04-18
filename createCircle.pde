
//변수를 사용하지 않은 원 그리기
//void setup() {
//  size(200, 200);
//}

//void draw() {
//  background(255);
//  fill(200);
//  ellipse(50, 50, 50, 50);
//  ellipse(150, 50, 50, 50);
//  ellipse(50, 150, 50, 50);
//  ellipse(150, 150, 50, 50);
//}
  
//변수를 사용한 원 그리기
int circleX = 50;
int circleY = 50;
int pos1 = 50;
int pos2 = 150;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  fill(200);
  ellipse(pos1, pos1,circleX, circleY);
  ellipse(pos2, pos1, circleX, circleY);
  ellipse(pos1, pos2, circleX, circleY);
  ellipse(pos2, pos2, circleX, circleY);
}
  
