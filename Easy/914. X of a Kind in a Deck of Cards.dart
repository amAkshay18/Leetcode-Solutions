bool hasGroupsSizeX(List<int> deck) {
  Map<int, int> countMap = {};

  // Count the occurrences of each number
  for (int number in deck) {
    if (countMap.containsKey(number)) {
      countMap[number] = (countMap[number] as int) + 1;
    } else {
      countMap[number] = 1;
    }
  }

  // Find the greatest common divisor (GCD) of all counts
  int gcd = 0;
  for (int count in countMap.values) {
    gcd = findGCD(gcd, count);
  }

  // Check if the GCD is greater than or equal to 2
  return gcd >= 2;
}

// Helper function to find the greatest common divisor (GCD)
int findGCD(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return findGCD(b, a % b);
  }
}
