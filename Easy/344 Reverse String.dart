class Solution {
  void reverseString(List<String> s) {
    int i = 0;
    String? temp;
    int j = s.length - 1;

    while (i < j) {
      temp = s[i];
      s[i] = s[j];
      s[j] = temp;
      i++;
      j--;
    }
  }
}
