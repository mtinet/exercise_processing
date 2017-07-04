PImage img;

void setup() {
  size(940, 873);
  img = loadImage("104.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();
  
  for (int y = 0; y <  height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y * width;
      float r = red (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      
      if (r > 200 && g > 200 && b > 200) {
        r = 0; 
        g = 0;
        b = 0;
      }
      pixels[loc] = color(r, g, b);
    }
  }
  updatePixels();
}
  
