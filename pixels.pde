size(200, 200);
loadPixels();

for (int i = 0; i < pixels.length; i++) {
  float r = random(255);
  float g = random(255);
  float b = random(255);
  
  color c = color(r, g, b);
  pixels[i] = c;
}

updatePixels();
