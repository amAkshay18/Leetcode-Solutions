List<int> resultArray(List<int> nums) {
  List<int> arr1 = [nums[0]];
  List<int> arr2 = [nums[1]];
  for (int i = 2; i < nums.length; i++) {
    arr1.last > arr2.last ? arr1.add(nums[i]) : arr2.add(nums[i]);
  }
  return [...arr1, ...arr2];
}
