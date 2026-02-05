class Solution {
  List<int> constructTransformedArray(List<int> nums) {
    int n = nums.length;
    List<int> result = List.filled(n, 0);
    for (int i = 0; i < n; i++) {
      if (nums[i] == 0) {
        result[i] = 0;
        continue;
      }
      int newIndex = i + nums[i];
      newIndex = ((newIndex % n) + n) % n;
      result[i] = nums[newIndex];
    }
    return result;
  }
}
