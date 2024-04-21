int thirdMax(List<int> nums) {
  nums.sort();
  nums = nums.toSet().toList();
  return nums.length < 3 ? nums.last : nums[nums.length - 3];
}

void main() {
  List<int> nums1 = [3, 2, 1];
  List<int> nums2 = [1, 2];
  List<int> nums3 = [2, 2, 3, 1];

  int result1 = thirdMax(nums1);
  int result2 = thirdMax(nums2);
  int result3 = thirdMax(nums3);

  print(result1);
  print(result2);
  print(result3);
}
