class Solution {
  bool detectCapitalUse(String word) {
    if (word.toLowerCase() == word) {
      return true;
    }
    if (word.toUpperCase() == word) {
      return true;
    }
    if (word.substring(1).toLowerCase() == word.substring(1)) {
      return true;
    }
    return false;
  }
}
