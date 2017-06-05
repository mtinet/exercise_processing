int n = 4;

void setup() {
  println(factorial(n));
}

int factorial(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
