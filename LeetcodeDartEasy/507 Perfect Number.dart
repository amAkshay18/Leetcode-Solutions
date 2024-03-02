bool checkPerfectNumber(int num) {
  int sum = 0;
  List<int> divisors = [];
  for (int i = 1; i <= num / 2; i++) {
    if (num % i == 0) {
      divisors.add(i);
    }
  }
  for (int divisor in divisors) {
    sum += divisor;
  }
  return num == sum;
}
