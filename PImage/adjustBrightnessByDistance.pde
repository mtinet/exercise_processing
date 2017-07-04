PImage img;

void setup() {
  size(940, 873);
  img = loadImage("104.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();
  
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      
      int loc = x + y*width;
      
      float r = red (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      
      float distance = dist(x, y, mouseX, mouseY);
      
      float adjustBrishtness = map(distance, 0, 200, 8, 0);
      
      r *= adjustBrishtness;
      g *= adjustBrishtness;
      b *= adjustBrishtness;
      
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      
      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}
  
