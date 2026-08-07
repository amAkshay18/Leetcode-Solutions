class Solution {
  int countPalindromicSubsequence(String s) {
    Set<String> uniqueChars = s.split('').toSet();
    int totalCount = 0;
    for (var i = 0; i < uniqueChars.length; i++) {
      String currentChar = uniqueChars.elementAt(i);
      int firstPos = s.indexOf(currentChar);
      int lastPos = s.lastIndexOf(currentChar);
      if (firstPos != lastPos) {
        Set<String> middleChars = s.substring(firstPos + 1, lastPos).split('').toSet();
        totalCount += middleChars.length;
      }
    }
    return totalCount;
  }
}