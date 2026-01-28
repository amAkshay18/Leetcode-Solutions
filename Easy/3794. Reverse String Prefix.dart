class Solution {
  String reversePrefix(String s, int k) {
    String firstPart = s.substring(0, k);
    String reversed = firstPart.split('').reversed.join('');
    String remainingPart = s.substring(k);
    return reversed + remainingPart;
  }
}

class Solution2 {
  String reversePrefix(String s, int k) =>
      s.substring(0, k).split('').reversed.join() + s.substring(k);
}
