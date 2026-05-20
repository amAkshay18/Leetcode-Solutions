class Solution {
  List<int> findEvenNumbers(List<int> digits) {
    Set<int> result = {};
    int n = digits.length;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        for (int k = 0; k < n; k++) {
          if (i == j || j == k || i == k) {
            continue;
          }
          int first = digits[i];
          int second = digits[j];
          int third = digits[k];
          if (first == 0) {
            continue;
          }
          if (third % 2 != 0) {
            continue;
          }
          int number = first * 100 + second * 10 + third;
          result.add(number);
        }
      }
    }
    List<int> answer = result.toList();
    answer.sort();
    return answer;
  }
}
