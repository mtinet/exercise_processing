String spaceswords = "The quick brown fox jumps over the lazy dog.";
String[] list = split(spaceswords, " ");
printArray(list);

println("----------");


String commaswords = "The,quick,brown,fox,jumps,over,the,lazy,doc.";
String[] list1 = split(commaswords, ",");
printArray(list1);

println("----------");

String stuff = "hats & apples, cars + phones % elephants dog.";
String[] list2 = splitTokens(stuff, "&,+.");
printArray(list2);

println("----------");

String numbers = "8,67,5,309";
int[] list3 = int(split(numbers, ","));
int sum = 0;
printArray(list3);
for (int i = 0; i < list3.length; i++) {
  sum = sum + list3[i];
}
println("sum = " + sum);

println("----------");

String[] lines = {"It", "was", "a", "dark", "and", "stormy", "night"};
//String onelongstring = "";
//for (int i = 0; i < lines.length; i++) {
//  onelongstring = onelongstring + lines[i] + " ";
//}
String onelongstring = join(lines, " ");
println(onelongstring);

