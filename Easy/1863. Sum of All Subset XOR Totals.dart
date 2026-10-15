class Solution {
  int subsetXORSum(List<int> nums) {
    int result = 0;
    int n = nums.length;
    void calculateXOR(int index, int currentXOR) {
      if (index == n) {
        result += currentXOR;
        return;
      }
      // Include the current element in the XOR
      calculateXOR(index + 1, currentXOR ^ nums[index]);
      // Exclude the current element in the XOR
      calculateXOR(index + 1, currentXOR);
    }

    calculateXOR(0, 0);
    return result;
  }
}
