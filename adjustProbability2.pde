float prob = 0.10;
float count = 0;
float r;
color c;

void setup() {
  size(200, 200);
  r = 0;
  c = color(random(255));
} 

void draw() {
  r = random(1);
  if (r < prob) {
    count++;
    ellipse(width/2, height/2, count, count);
    println("Correct" + count);
  }
  else { 
    println("Not Correct" + count);
  }
}
