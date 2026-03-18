class Solution {
  bool isNumber(String s) {
    if (s.contains(double.infinity.toString())) return false;
    return double.tryParse(s) != null;
  }
}