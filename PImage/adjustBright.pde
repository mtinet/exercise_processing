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
      int loc = x + y * img.width;
      
      float r = red (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      
      float adjustBright = map(mouseX, 0, width, 0, 8);
      
      r *= adjustBright;
      g *= adjustBright;
      b *= adjustBright;
      
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      
      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }
      
  updatePixels();
}
