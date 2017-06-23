float theta = 0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  stroke(0);
  
  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 20, 20);
  
  pushMatrix();
  rotate(theta);
  translate(50, 0);
  fill(50, 200, 255);
  ellipse(0, 0, 10, 10);
  
  pushMatrix();
  rotate(-theta*4);
  translate(15, 0);
  
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();
  
  pushMatrix();
  rotate(theta*2);
  translate(25, 0);
  fill(50, 255, 200);
  ellipse(0, 0, 6, 6);
  popMatrix();
  
  popMatrix();
  
  theta += 0.01;
}
