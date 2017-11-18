import processing.opengl.*;
import processing.pdf.*;

float yTheta = 0.0;
float xTheta = 0.0;

boolean recordPDF = false;

void setup() {
  size(400, 400, P3D);
}

void draw() {
  if (recordPDF) {
    beginRaw(PDF, "output/3D.pdf");
  }
  
  background(255);
  stroke(0);
  noFill();
  translate(width/2, height/2);
  rotateX(xTheta);
  rotateY(yTheta);
  box(100);
  xTheta += 0.02;
  yTheta += 0.03;
  
  if (recordPDF) {
    endRaw();
    recordPDF = false;
  }
}

void mousePressed() {
  recordPDF = true;
}
