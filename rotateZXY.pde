// X축을 기준으로 회전
float theta = 0.0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  translate(100, 100);
  rotateZ(theta);
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  
  theta += 0.02;
}


/* 
// X축을 기준으로 회전
float theta = 0.0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  translate(100, 100);
  rotateX(theta);
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  
  theta += 0.02;
}

// Y축을 기준으로 회전
float theta = 0.0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  translate(100, 100);
  rotateY(theta);
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  
  theta += 0.02;
}
*/
