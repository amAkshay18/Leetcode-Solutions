class Solution {
  int minBitFlips(int start, int goal) {
    return (start^goal).toRadixString(2).split('0').join().length;
  }
}