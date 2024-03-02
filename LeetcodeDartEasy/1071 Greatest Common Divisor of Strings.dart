class Solution {
  String gcdOfStrings(String str1, String str2) {
    if (str1 + str2 != str2 + str1) {
      return '';
    }
    int length1 = str1.length;
    int length2 = str2.length;
    int gcdLength = _gcd(length1, length2);
    String commonDivisor = str1.substring(0, gcdLength);
    return commonDivisor;
  }

  int _gcd(int a, int b) {
    if (b == 0) {
      return a;
    }
    return _gcd(b, a % b);
  }
}
