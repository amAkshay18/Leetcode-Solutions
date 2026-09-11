class Solution {
  int totalNumbers(List<int> digits) {
    int count = 0;
    for (int num = 100; num <= 999; num++) {
      if (num % 2 != 0) {
        continue;
      }
      int a = num ~/ 100;
      int b = (num ~/ 10) % 10;
      int c = num % 10;
      List<int> copy = List.from(digits);
      if (copy.contains(a)) {
        copy.remove(a);
      } else {
        continue;
      }
      if (copy.contains(b)) {
        copy.remove(b);
      } else {
        continue;
      }
      if (copy.contains(c)) {
        count++;
      }
    }
    return count;
  }
}