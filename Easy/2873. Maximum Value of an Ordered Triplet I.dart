int maximumTripletValue(List<int> nums) {
  int result = 0;
  for (int i = 0; i < nums.length - 2; i++) {
    for (int j = i + 1; j < nums.length - 1; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        int d = (nums[i] - nums[j]) * nums[k];
        result = d > result ? d : result;
      }
    }
  }
  return result;
}
