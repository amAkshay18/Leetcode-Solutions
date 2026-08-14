class Solution {
  int maximumLengthSubstring(String s) {
    Map<String, int> count = {};
    int left = 0;
    int maxLength = 0;
    for (int right = 0; right < s.length; right++) {
      String char = s[right];
      // Add the current character
      count[char] = (count[char] ?? 0) + 1;
      // If any character occurs more than 2 times
      while (count[char]! > 2) {
        String leftChar = s[left];
        count[leftChar] = count[leftChar]! - 1;
        left++;
      }
      // Current valid substring length
      int length = right - left + 1;

      if (length > maxLength) {
        maxLength = length;
      }
    }
    return maxLength;
  }
}
