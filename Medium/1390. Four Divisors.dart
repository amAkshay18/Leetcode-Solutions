class Solution {
  int sumFourDivisors(List<int> nums) {
    int totalSum = 0;
    for (int n in nums) {
      totalSum += _fourDivisorSum(n);
    }
    return totalSum;
  }

  int _fourDivisorSum(int n) {
    // Case 1: p^3
    int p = _cubeRoot(n);
    if (p > 1 && p * p * p == n && _isPrime(p)) {
      return 1 + p + p * p + n;
    }
    // Case 2: p * q
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {
        int p = i;
        int q = n ~/ i;

        if (p != q && _isPrime(p) && _isPrime(q)) {
          return 1 + p + q + n;
        }
        break; // only one factor pair needed
      }
    }
    return 0;
  }

  bool _isPrime(int n) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
  
  int _cubeRoot(int n) {
    int x = 1;
    while (x * x * x <= n) {
      if (x * x * x == n) return x;
      x++;
    }
    return -1;
  }
}
