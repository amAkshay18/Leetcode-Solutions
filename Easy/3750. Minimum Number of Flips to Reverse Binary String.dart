class Solution {
  int minimumFlips(int n) {
    String binary = n.toRadixString(2);
    String reversed = binary.split('').reversed.join();
    int flips = 0;
    for (int i = 0; i < binary.length; i++) {
      if (binary[i] != reversed[i]) {
        flips++;
      }
    }
    return flips;
  }
}