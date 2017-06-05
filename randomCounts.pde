float[] randoms = new float[10];
int index = 0;

void setup() {
  size(200, 200);
  for (int i = 0; i < randoms.length; i++) {
    randoms[i] = random(0, 256);
  }
  
  frameRate(1);
}

void draw() {
  background(randoms[index]);
  index = (index + 1) % randoms.length;
  println(index);
}
