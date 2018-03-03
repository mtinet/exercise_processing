Timer timer = new Timer(1000);
String time = "";

void setup() {
  size(200, 200);
  thread("retrieveData");
  timer.start();
}

void draw() {
  background(255);
  if (timer.isFinished()) {
    retrieveData();
    
    timer.start();
  }
  fill(0);
  text(time, 40, 100);
  stroke(0);
  rotate(frameCount*0.1);
  for (int i = 0; i < 10; i++) {
    rotate(radians(36));
    line(15, 0, 10, 0);
  }
}

void retrieveData() {
  JSONObject json = loadJSONObject("http://time.jsontest.com/");
  time = json.getString("time");
}

class Timer {
  int savedTime;
  int totalTime;
  
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  void start() {
    savedTime = millis();
  }
  
  boolean isFinished() {
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
