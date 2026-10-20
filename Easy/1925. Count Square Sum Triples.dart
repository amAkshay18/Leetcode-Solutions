import 'dart:math';

class Solution {
  int countTriples(int n) {
    int count = 0;
    List<int> squares = List.filled(n + 1, 0);
    for (int i = 1; i <= n; i++) {
      squares[i] = i * i;
    }
    for (int a = 1; a <= n; a++) {
      for (int b = 1; b <= n; b++) {
        int cSquared = squares[a] + squares[b];
        int c = sqrt(cSquared).toInt();
        if (c * c == cSquared && c <= n) {
          count++;
        }
      }
    }
    return count;
  }
}
