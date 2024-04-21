class Solution {
  int strStr(String haystack, String needle) {
    int hLength = haystack.length;
    int nLength = needle.length;
    for (int i = 0; i <= hLength - nLength; i++) {
      if (haystack.substring(i, i + nLength) == needle) {
        return i;
      }
    }
    return -1;
  }
}
