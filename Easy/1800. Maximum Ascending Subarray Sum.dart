int maxAscendingSum (List<int> nums) {
  int sum = nums[0];
  int result = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[i-1]){
      sum += nums[i];
    } else {
      if (sum > result) {
        result = sum;
      }
      sum = nums[i];
    }
    if (sum > result) {
      result = sum;
    }
  }
  return result;
}