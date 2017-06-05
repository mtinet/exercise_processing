int[] stuff = new int[5];


void setup() {
  size(200, 200);
  stuff[0] = 1;
  stuff [1] = 1;
  stuff[2] = 2;
  stuff[3] = 3;
  stuff[4] = 3;
}

void draw() {
  int index = int(random(stuff.length));
  if (stuff[index] == 1) {
    rect(mouseX, mouseY, 5, 5);
  } else if (stuff[index] == 2) {
    rect(mouseX, mouseY, 10, 10);
  } else {
    rect(mouseX, mouseY, 15, 15);
  } 
}
