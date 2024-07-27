import 'dart:math';

int maximumCount1(List<int> nums) {
  return max(
    nums.where((e) => e > 0).length,
    nums.where((e) => e < 0).length,
  );
}

int maximumCount2(List<int> nums) {
  int n = nums.length;
  int countPositives() {
    int left = 0;
    int right = n - 1;
    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      if (nums[mid] <= 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return n - left;
  }

  int countNegatives() {
    int left = 0;
    int right = n - 1;
    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      if (nums[mid] < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return left;
  }

  int positiveCount = countPositives();
  int negativeCount = countNegatives();
  return positiveCount > negativeCount ? positiveCount : negativeCount;
}
