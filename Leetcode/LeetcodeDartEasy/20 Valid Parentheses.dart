class Solution {
  bool isValid(String s) {
    var a = '()';
    var b = '[]';
    var c = '{}';

    while (s.isNotEmpty) {
      if (s.contains(a)) {
        s = s.replaceAll(a, '');
      } else if (s.contains(b)) {
        s = s.replaceAll(b, '');
      } else if (s.contains(c)) {
        s = s.replaceAll(c, '');
      } else {
        return false;
      }
    }
    return true;
  }
}
