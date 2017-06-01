int savedTime;
int totalTime = 1000;


void  setup() {
  fullScreen(SPAN);
  //size(200, 200);
  background(0);
  savedTime = millis();
}

void draw() {
  color c = color(random(255), random(255), random(255));
  int passedTime = millis() - savedTime;
  
  if (passedTime > totalTime) {
    println("1 seconds have passed!");
    background(c);
    savedTime = millis();
  }
}
