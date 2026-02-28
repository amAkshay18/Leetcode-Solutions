class Solution {
  int percentageLetter(String s, String letter) {
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == letter) {
        count++;
      }
    }
    int percentage = (count * 100) ~/ s.length;
    return percentage;
  }
}