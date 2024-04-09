class Solution {
  String findTheDifference(String s, String t) {
    int sum1 = 0;
    int sum2 = 0;
    int i;
    for (i = 0; i < s.length; i++) {
      sum1 += s.codeUnitAt(i);
      sum2 += t.codeUnitAt(i);
    }
    sum2 += t.codeUnitAt(i);
    return String.fromCharCode(sum2 - sum1);
  }
}
