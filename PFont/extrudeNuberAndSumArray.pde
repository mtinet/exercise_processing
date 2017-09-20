String numbers = "8,   67, 5, 309";
int[] list = int(splitTokens(numbers, ", "));
int sum = 0;
for (int i = 0; i <list.length; i++) {
  sum = sum + list[i];
}
println(sum);
