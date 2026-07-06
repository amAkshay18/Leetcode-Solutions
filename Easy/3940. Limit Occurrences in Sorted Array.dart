class Solution {
  List<int> limitOccurrences(List<int> nums, int k) {
    List<int> result = [];
    int current = nums[0];
    int count = 0;
    for (int num in nums) {
      if (num == current) {
        count++;
      } else {
        current = num;
        count = 1;
      }
      if (count <= k) {
        result.add(num);
      }
    }
    return result;
  }
}