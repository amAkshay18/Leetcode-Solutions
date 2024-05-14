int countPrimeSetBits(int left, int right) {
  // Helper function to count set bits in a number
  int countSetBits(int num) {
    int count = 0;
    while (num > 0) {
      count += num & 1;
      num >>= 1;
    }
    return count;
  }

  // Helper function to check if a number is prime
  bool isPrime(int num) {
    if (num <= 1) return false;
    if (num == 2) return true;
    if (num % 2 == 0) return false;
    for (int i = 3; i * i <= num; i += 2) {
      if (num % i == 0) return false;
    }
    return true;
  }

  int count = 0;
  for (int i = left; i <= right; i++) {
    if (isPrime(countSetBits(i))) {
      count++;
    }
  }
  return count;
}

void main() {
  int left = 6, right = 10;
  print(countPrimeSetBits(left, right)); // Output: 4

  left = 10;
  right = 15;
  print(countPrimeSetBits(left, right)); // Output: 5
}
