import processing.video.*;

Capture video;
float i = 0;

void setup() {
  size(320, 240);
  video = new Capture(this, 320, 240);
  video.start();
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);
  
  tint(mouseX, mouseY, 255);
  translate(width/2, height/2);
  imageMode(CENTER);
   
  i = i + 0.1;
  rotate(i);
  image(video, 0, 0, mouseX, mouseY);
}
