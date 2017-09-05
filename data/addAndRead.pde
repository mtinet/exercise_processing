String[] stuff = loadStrings("data.csv");
Table table = loadTable("data.csv", "header");
TableRow row = table.addRow();

row.setFloat("x", 100);
row.setFloat("y", 50);
row.setFloat("diameter", random(40, 80));
row.setString("name", "new label");

// (table.getRowCount()-1)는 테이블의 마지막 row를 불러오기 위하여 사용한 부분임  
row =table.getRow(table.getRowCount()-1);
float x = row.getFloat("x");
float y = row.getFloat("y");
float d = row.getFloat("diameter");
String n = row.getString("name");

println(x, y, d, n);

