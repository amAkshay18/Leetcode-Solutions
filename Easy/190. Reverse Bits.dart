class Solution {
  int reverseBits(int n) {
    String binary = n.toRadixString(2).padLeft(32, '0');
    String reversed = binary.split('').reversed.join();
    return int.parse(reversed, radix: 2);
  }
}
