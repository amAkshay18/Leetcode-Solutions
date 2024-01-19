class Solution {
  int minLength(String s) {
    int result = 0;
    while (s.contains('AB') || s.contains('CD')) {
      s = s.replaceAll('AB', '');
      s = s.replaceAll('CD', '');
    }
    result = s.length;
    return result;
  }
}
