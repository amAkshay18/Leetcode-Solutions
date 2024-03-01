class Solution {
  String nextGreatestLetter(List<String> letters, String target) {
    for (String letter in letters) {
      if (letter.compareTo(target) > 0) {
        return letter;
      }
    }
    return letters[0];
  }
}
