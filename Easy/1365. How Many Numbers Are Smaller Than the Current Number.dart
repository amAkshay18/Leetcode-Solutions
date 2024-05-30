List<int> smallerNumbersThanCurrent(List<int> nums) {
  List<int> sortedNums = List.from(nums)..sort();
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    for (int j = 0; j < sortedNums.length; j++) {
      if (nums[i] == sortedNums[j]) {
        result.add(j);
        break;
      }
    }
  }
  return result;
}
