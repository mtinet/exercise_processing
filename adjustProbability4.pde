float y = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  float r = random(1);
  
  if (r < 0.1) {
    y -= 1;
    println(r + " up");
  } else if (r < 0.3) {
    y += 1;
    println(r + " down");
  } else { 
    println(r + " stay");
  }
  
  ellipse(width/2, y, 16, 16);
}
