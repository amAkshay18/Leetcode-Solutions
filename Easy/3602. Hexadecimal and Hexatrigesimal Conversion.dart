class Solution {
  String concatHex36(int n) {
    int square = n * n;
    int cube = n * n * n;
    String hexValue = square.toRadixString(16).toUpperCase();
    String base36Value = cube.toRadixString(36).toUpperCase();
    return hexValue + base36Value;
  }
}