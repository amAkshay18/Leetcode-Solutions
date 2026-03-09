class Solution {
  int removeAlmostEqualCharacters(String word) {
    int count = 0;
    int i = 0;
    while (i < word.length - 1) {
      String c = word[i];
      String d = word[i + 1];
      if (c == d ||
          c.codeUnitAt(0) + 1 == d.codeUnitAt(0) ||
          c.codeUnitAt(0) - 1 == d.codeUnitAt(0)) {
        count++;
        i += 2;
      } else {
        i++;
      }
    }
    return count;
  }
}
