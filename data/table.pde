Table table = loadTable("data.csv", "header");

TableRow row = table.getRow(2);

int x = row.getInt("x");
int y = row.getInt("y");
float d = row.getFloat("diameter");
String s = row.getString("name");

println(x);
println(y);
println(d);
println(s);
