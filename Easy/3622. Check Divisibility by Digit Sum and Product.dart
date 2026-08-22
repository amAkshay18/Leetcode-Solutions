class Solution {
  bool checkDivisibility(int n) {
    return n % (sum(n) + multi(n)) == 0;
  }

  int sum(int n) {
    int sum = 0;
    while (n > 0) {
      sum += n % 10;
      n = n ~/ 10;
    }
    return sum;
  }

  int multi(int n ) {
    int multiple = 1;
    while (n > 0) {
      multiple *= n % 10;
      n = n ~/ 10;
    }
    return multiple;
  }
}