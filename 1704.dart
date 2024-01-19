class Solution {
  bool halvesAreAlike(String s) {
    int length = s.length;
    String s1 = s.substring(0, length ~/ 2);
    String s2 = s.substring(length ~/ 2);
    int count1 = countVowels(s1);
    int count2 = countVowels(s2);
    return count1 == count2;
  }

  int countVowels(String s) {
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      if ('aeiouAEIOU'.contains(s[i])) {
        count++;
      }
    }
    return count;
  }
}
