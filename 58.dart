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
