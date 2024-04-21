// Solution 1
bool isUgly(int n) {
  if (n <= 0) return false;
  List<int> primeFactors = [2, 3, 5];
  for (var i in primeFactors) {
    while (n % i == 0) {
      n ~/= i;
    }
  }
  return n == 1;
}

// Solution 2
bool isUgly2(int n) {
  if (n <= 0) return false;
  while (n % 2 == 0) {
    n ~/= 2;
  }
  while (n % 3 == 0) {
    n ~/= 3;
  }
  while (n % 5 == 0) {
    n ~/= 5;
  }
  return n == 1;
}

void main() {
  int n1 = 6;
  int n2 = 2;
  int n3 = 14;

  bool example1 = isUgly(n1);
  bool example2 = isUgly(n2);
  bool example3 = isUgly(n3);

  print(example1);
  print(example2);
  print(example3);

  bool example4 = isUgly2(n1);
  bool example5 = isUgly2(n2);
  bool example6 = isUgly2(n3);

  print(example4);
  print(example5);
  print(example6);
}
