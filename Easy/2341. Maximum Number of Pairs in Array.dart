List<int> numberOfPairs(List<int> nums) {
  List<int> result = [];
  int count = 0;
  int i = 0;
  while (i < nums.length - 1) {
    int j = i + 1;
    while (j < nums.length) {
      if (nums[i] == nums[j]) {
        count++;
        nums.removeAt(j);
        nums.removeAt(i);
        i = 0;
        break;
      } else {
        j++;
      }
    }
    if (j == nums.length) i++;
  }
  return [count, nums.length];
}
