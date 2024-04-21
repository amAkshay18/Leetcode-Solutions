int commonFactors(int a, int b) {
  int smaller = a < b ? a : b;
  int count = 0;
  for (int i = 1; i <= smaller; i++) {
    if (a % i == 0 && b % i == 0) count++;
  }
  return count;
}
