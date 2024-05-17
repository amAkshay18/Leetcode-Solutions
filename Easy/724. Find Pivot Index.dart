int pivotIndex(List<int> nums) {
  int leftSum = 0;
  int rigthSum = nums.reduce((value, element) => value + element);
  int index = 0;
  while (index < nums.length) {
    leftSum += nums[index];
    if (leftSum == rigthSum) return index;
    rigthSum -= nums[index];
    index++;
  }
  return -1;
}
