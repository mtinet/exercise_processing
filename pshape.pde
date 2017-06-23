PShape star;

void setup() {
  size(200, 200);
  star = createShape();
  
  star.beginShape();
  star.fill(102);
  star.stroke(0);
  star.strokeWeight(2);
  
  star.vertex(0, -50);
  star.vertex(14, -20);
  star.vertex(47, -15);
  star.vertex(23, 7);
  star.vertex(29, 40);
  star.vertex(0, 25);
  star.vertex(-29, 40);
  star.vertex(-23, 7);
  star.vertex(-47, -15);
  star.vertex(-14, -20);
  star.endShape(CLOSE);
}
  
void draw() {
  background(255);
  pushMatrix();
  translate(mouseX, mouseY);
  shape(star);
  popMatrix();
  pushMatrix();
  translate(100, 100);
  shape(star);
  popMatrix();
}
 
