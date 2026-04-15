class Solution {
  int lengthOfLIS(List<int> nums) {
    List<int> arr = List.filled(nums.length, 1);
    for (int i = 1; i < nums.length; i++) {
      for (int j = 0; j < i; j++) {
        if (nums[i] > nums[j] && arr[i] < arr[j] + 1) {
          arr[i] = arr[j] + 1;
        }
      }
    }
    int maxLength = 1;
    for (int i = 1; i < nums.length; i++) {
      if (arr[i] > maxLength) {
        maxLength = arr[i];
      }
    }
    return maxLength;
  }
}