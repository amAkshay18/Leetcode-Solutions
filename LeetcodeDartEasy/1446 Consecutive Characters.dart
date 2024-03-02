import 'dart:math';

int maxPower(String s) {
  int count = 1;
  int maximumCount = 1;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == s[i + 1]) {
      count++;
      maximumCount = max(maximumCount, count);
    } else {
      maximumCount = 1;
    }
  }
  return maximumCount;
}
