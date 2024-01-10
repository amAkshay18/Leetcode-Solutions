// 58. Length of Last Word
// Given a string s consisting of words and spaces, return the length of the last word in the string.

// A word is a maximal
// substring
// consisting of non-space characters only.

class Solution {
  int lengthOfLastWord(String s) {
    int index = s.length - 1;
    while (s[index] == " ") {
      index--;
    }
    int count = 0;
    while (s[index] != " ") {
      count++;
      if (s[index] == " " || index == 0) {
        break;
      }
      index--;
    }
    return count;
  }
}
