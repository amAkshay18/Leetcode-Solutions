class Solution {
  int generateKey(int num1, int num2, int num3) {
    String s1 = num1.toString().padLeft(4, '0');
    String s2 = num2.toString().padLeft(4, '0');
    String s3 = num3.toString().padLeft(4, '0');
    String result = "";
    for (int i = 0; i < 4; i++) {
      int d1 = int.parse(s1[i]);
      int d2 = int.parse(s2[i]);
      int d3 = int.parse(s3[i]);
      int minDigit = [d1, d2, d3].reduce((a, b) => a < b ? a : b);
      result += minDigit.toString();
    }
    return int.parse(result);
  }
}