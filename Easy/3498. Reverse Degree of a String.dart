class Solution {
  int reverseDegree(String s) {
    int totalScore = 0;
    String lowerCaseString = s.toLowerCase();
    for (int i = 0; i < lowerCaseString.length; i++) {
      int position = i + 1;
      int reverseAlphabetValue = 'z'.codeUnitAt(0) - s.codeUnitAt(i) + 1;
      totalScore += reverseAlphabetValue * position;
    }
    return totalScore;
  }
}
