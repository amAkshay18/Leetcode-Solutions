class Solution {
  int lengthOfLongestSubstring(String s) {
    int len = s.length;
    int i = 0; 
    int j = 0; 
    int maxLength = 0; 
    List<String> substring = [];
    while (j < len) {
      if (!substring.contains(s[j])) {
        substring.add(s[j]);
        maxLength = maxLength > j - i + 1 ? maxLength : j - i + 1;
        j++;
      } else {
        substring.removeAt(0);
        i++;
      }
    }
    return maxLength;
  }
}