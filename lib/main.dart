void main() {
  int result = sum(2, 4);
  print(result);
  int result2 = min(100, 34, e: 5, c: 2, d: 1);
  print(result2);
}

int sum(int a, int b, [int? c, int d = 0]) {
  int result = a + b + d;
  if (c != null) {
    result = result + c;
  }
  return result;
}

int min(int a, int b, {int c = 0, int? d, required int e}) {
  int result = a - b - c - e;
  if (d != null) {
    result = result - d;
  }
  return result;
}
