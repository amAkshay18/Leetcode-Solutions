import 'dart:math';

int findPeakElement1(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;
  while (left < right) {
    int mid = left + (right - left) ~/ 2;
    if (nums[mid] > nums[mid + 1]) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }
  return left;
}

int findPeakElement2(List<int> nums) {
  for (var i = 0; i < nums.length; i++) {
    if (i == 0 || i == nums.length - 1) continue;
    if (nums[i - 1] < nums[i] && nums[i] > nums[i + 1]) return i;
  }
  return nums.first > nums.last ? 0 : nums.length - 1;
}

int findPeakElement3(List<int> nums) {
  int maxValue = nums.reduce(max);
  return nums.indexOf(maxValue);
}

void main() {
  var nums = [1, 2, 1, 3, 5, 6, 4];
  var result = findPeakElement2(nums);
  print(result);
}
