class Solution {
  List<int> decrypt(List<int> code, int k) {
    int n = code.length;
    List<int> result = List.filled(n, 0);
    if (k == 0) return result;
    for (int i = 0; i < n; i++) {
      int sum = 0, step = 0, j = i;
      while (step < k.abs()) {
        j = (j + (k > 0 ? 1 : -1) + n) % n;
        sum += code[j];
        step++;
      }
      result[i] = sum;
    }
    return result;
  }
}