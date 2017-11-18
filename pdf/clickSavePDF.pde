import processing.pdf.*;

float x = 0;
float y = 0; 

void setup() {
  size(400, 400);
  
  beginRecord(PDF, "output/scrivvler.pdf");
  background(255);
}

void draw() {
  float newx = constrain(x + random(-20, 20), 0, width);
  float newy = constrain(y + random(-20, 20), 0, height);
  
  stroke(frameCount%255, frameCount*3%255, frameCount*11%255, 100);
  strokeWeight(4);
  line(x, y, newx, newy);
  
  x = newx;
  y = newy;
  
}

void mousePressed() {
  endRecord();
  launch(sketchPath("scribbler.pdf"));
  noLoop();
}
