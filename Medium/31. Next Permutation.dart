void nextPermutation(List<int> nums) {
  int i = nums.length - 2;
  while (i >= 0 && nums[i] >= nums[i + 1]) {
    i--;
  }
  if (i == -1) {
    nums.sort();
    return;
  }
  int j = nums.length - 1;
  while (nums[j] <= nums[i]) {
    j--;
  }
  int temp = nums[i];
  nums[i] = nums[j];
  nums[j] = temp;
  nums.setRange(i + 1, nums.length, nums.sublist(i + 1).reversed);
}
