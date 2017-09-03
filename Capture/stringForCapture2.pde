import processing.video.*;

int videoScale = 10;
int cols, rows;
Capture video;

String chars = "helloworld";
PFont f;

void setup() {
  size(3200, 2400);
  cols = width/videoScale;
  rows = height/videoScale;
  video = new Capture(this, cols, rows);
  video.start();
  
  f = createFont("Courier", 16);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);
  video.loadPixels();
  int charcount = 0;
  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < cols; i++) {
      int x = i * videoScale;
      int y = j * videoScale;
      
      float b = brightness(video.pixels[i + j* video.width]);
      
      //println(b);
      
      float fontSize = 2 * (b / videoScale);
      textSize(fontSize);
      
      text(chars.charAt(charcount), x, y);
      charcount = (charcount + 1) % chars.length();
    }
  }
}
