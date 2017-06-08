Cell[][] grid;


int cols = 20;
int rows = 20;

void setup() {
  size(200, 200);
  grid = new Cell[cols][rows];
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j] = new Cell(i*10, j*10, 10, 10, i+j);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}


class Cell {
  float x;
  float y;
  float w;
  float h;
  
  float angle;
  
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  }
  
  void oscillate() {
    angle += 0.05;
  }
  
  void display() {
    stroke(255);
    
    float bright = map(sin(angle), -1, 1, 0, 255);
    
    fill(bright);
    rect(x, y, w, h);
  }
}
