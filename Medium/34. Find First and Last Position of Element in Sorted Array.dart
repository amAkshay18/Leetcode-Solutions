// Method1
List<int> searchRange1(List<int> nums, int target) {
  var result = [-1, -1];
  int? n1;
  int? n2;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      n1 = i;
      break;
    }
  }
  if (n1 != null) {
    for (int i = nums.length - 1; i >= n1; i--) {
      if (nums[i] == target) {
        n2 = i;
        break;
      }
    }
  }
  if (n2 != null) {
    result[0] = n1!;
    result[1] = n2;
  }
  return result;
}

// Method 2
List<int> searchRange2(List<int> nums, int target) {
  return [nums.indexOf(target), nums.lastIndexOf(target)];
}
