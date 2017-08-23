int savedTime;
int totalTime = 1000;
PFont f;


void  setup() {
  fullScreen(SPAN);
  background(0);
  savedTime = millis();
  f = createFont("Gjeorgia", 16);
}

void draw() {
  color c = color(random(255), random(255), random(255));
  int passedTime = millis() - savedTime;
  
  if (passedTime > totalTime) {
    println("1 seconds have passed!");
    background(c);
    savedTime = millis();
  }
  
  textFont(f, 80);
  fill(255);
  text("Hello World!", mouseX, mouseY);
}
