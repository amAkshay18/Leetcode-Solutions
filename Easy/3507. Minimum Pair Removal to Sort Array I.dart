class Solution {
  int minimumPairRemoval(List<int> nums) {
    int count = 0;
    bool isSorted(List<int> arr) {
      for (int i = 1; i < arr.length; i++) {
        if (arr[i] < arr[i - 1]) return false;
      }
      return true;
    }

    while (!isSorted(nums)) {
      int minSum = nums[0] + nums[1];
      int minIndex = 0;
      for (int i = 0; i < nums.length - 1; i++) {
        int sum = nums[i] + nums[i + 1];
        if (sum < minSum) {
          minSum = sum;
          minIndex = i;
        }
      }
      nums[minIndex] = nums[minIndex] + nums[minIndex + 1];
      nums.removeAt(minIndex + 1);
      count++;
    }
    return count;
  }
}
