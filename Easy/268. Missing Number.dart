int missingNumber(List<int> nums) {
  int sumOfnNumbers = nums.length * (nums.length + 1) ~/ 2;
  int sumOfNums = nums.fold(0, (a, b) => a + b);
  return sumOfnNumbers - sumOfNums;
}

void main() {
  List<int> nums1 = [3, 0, 1];
  List<int> nums2 = [0, 1];
  List<int> nums3 = [9, 6, 4, 2, 3, 5, 7, 0, 1];

  int result1 = missingNumber(nums1);
  int result2 = missingNumber(nums2);
  int result3 = missingNumber(nums3);

  print(result1);
  print(result2);
  print(result3);
}
