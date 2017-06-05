float t = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  float noisevalue = noise(t);
  println(noisevalue);
  
  //펄린 노이즈를 사용해 노이즈 값에 따라 y좌표와 박스의 y축 길이를 변화시킴
  rect(width/3, noisevalue*100, width/3, noisevalue*100);
  
  t += 0.01;
}
