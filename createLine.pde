// 변수를 사용하지 않고 선 그리기  
//void setup() {
//  size(200, 200);
//}

//void draw() {
//  line(100, 0, 100, 100);
//  line(100, 100, 0, 200);
//  line(100, 100, 200, 200);
//}
  

// 변수를 사용하여 선 그리기  
int pointX1 = 100;
int pointY1 = 0;
int pointX2 = 100;
int pointY2 = 100;
int pointX3 = 0;
int pointY3 = 200;
int pointX4 = 200;
int pointY4 = 200;

void setup() {
  size(200, 200);
}

void draw() {
  line(pointX1,pointY1, pointX2, pointY2);
  line(pointX2, pointY2, pointX3, pointY3);
  line(pointX2, pointY2, pointX4, pointY4);
}

  
