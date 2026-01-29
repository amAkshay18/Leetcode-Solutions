class Solution {
  int mirrorDistance(int n) {
    String original = n.toString();
    String reversedString = original.split('').reversed.join('');
    int reversedNumber = int.parse(reversedString);
    int result = (n - reversedNumber).abs();
    return result;
  }
}
