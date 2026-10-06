class Solution {
  String longestPalindrome(String s) {
    String result = "";
    int max = 0;
    for (int i = 0; i < s.length; i++) {
      for (int j = 0; j <= 1; j++) {
        int l = i;
        int r = i + j;
        while (l >= 0 && r < s.length && s[l] == s[r]) {
          int len = r - l + 1;
          if (len > max) {
            result = s.substring(l, r + 1);
            max = len;
          }
          l--;
          r++;
        }
      }
    }
    return result;
  }
}