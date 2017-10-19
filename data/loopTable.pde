Table table = loadTable("data.csv", "header");

for (int i = 0; i < table.getRowCount(); i++) {
  TableRow row = table.getRow(i);
  float x = row.getFloat("x");
  float y = row.getFloat("y");
  float d = row.getFloat("diameter");
  String n = row.getString("name");
  
  println(x, y, d, n);
}
