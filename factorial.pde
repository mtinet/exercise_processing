int n = 4;

void setup() {
  println(factorial(n));
}

int factorial(int n) {
  int f = 1;
  for(int i = 0; i < n; i++) {
    f = f * (i + 1);
  }
  return f;
}
