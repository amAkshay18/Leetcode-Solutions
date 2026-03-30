class Solution {
  int minMoves(List<int> nums) {
    nums.sort();
    final int largest = nums.last;
    int total = 0;
    nums.forEach((e) {
      total += largest - e;
    });
    return total;
  }
}