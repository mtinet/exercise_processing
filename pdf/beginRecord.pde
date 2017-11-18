import processing.pdf.*;

void setup() {
  size(400, 400);
  beginRecord(PDF, "output/haha.pdf");
}

void draw() {
  background(100);
  fill(0);
  stroke(255);
  ellipse(width/2, height/2, 160, 160);
  endRecord();
  
  noLoop();
}
