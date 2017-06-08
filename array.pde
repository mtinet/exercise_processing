size(200, 200);
int cols = width;
int rows = height;

int[][] myArray = new int[cols][rows];

background(255);

for (int i = 0; i < cols; i+=10) {
  for (int j = 0; j < rows; j+=10) {
    stroke(myArray[i][j]);
    point(i, j);
  }
}
