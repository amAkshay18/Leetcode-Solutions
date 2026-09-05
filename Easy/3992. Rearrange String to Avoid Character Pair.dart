class Solution {
  String rearrangeString(String s, String x, String y) {
    String xc = '';
    String yc = '';
    String others = '';
    for (final c in s.split('')) {
      if (c == y) {
        yc += c;
      } else if (c == x) {
        xc += c;
      } else {
        others += c;
      }
    }
    return yc + others + xc;
  }
}