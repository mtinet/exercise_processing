Table table;
Bubble[] bubbles;

void setup() {
  size(480, 360);
  loadData();
}

void draw() {
  background(255);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }
}

void loadData() {
  table = loadTable("data.csv", "header");
  bubbles = new Bubble[table.getRowCount()];
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    
    float x = row.getFloat("x");
    float y = row.getFloat("y");
    float d = row.getFloat("diameter");
    String n = row.getString("name");
    bubbles[i] = new Bubble(x, y, d, n);
  }
}

void mousePressed() {
  TableRow row = table.addRow();
  
  row.setFloat("x", mouseX);
  row.setFloat("y", mouseY);
  row.setFloat("diameter", random(40, 80));
  row.setString("name", "Blah");
  
  if (table.getRowCount() > 10) {
    table.removeRow(0);
  }
  
  saveTable(table, "data/data.csv");
  loadData();
}

class Bubble {
  float x, y;
  float diameter;
  String name;
  
  boolean over = false;
  
  Bubble(float tempX, float tempY, float tempD, String s) {
    x = tempX;
    y = tempY;
    diameter = tempD;
    name = s;
  }
  
  void rollover(float px, float py) {
    float d = dist(px, py, x, y);
    if (d < diameter/2) {
      over = true;
    } else {
      over = false;
    }
  }
  
  void display() {
    stroke(0);
    strokeWeight(2);
    noFill();
    ellipse(x, y, diameter, diameter);
    
    if (over) {
      fill(0);
      textAlign(CENTER);
      text(name, x, y+diameter/2 + 20);
    }
  }
}
