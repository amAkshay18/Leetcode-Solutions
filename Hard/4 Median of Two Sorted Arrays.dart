double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  List<int> nums = [...nums1, ...nums2];
  nums.sort();
  if (nums.length.isOdd) {
    return nums[nums.length ~/ 2].toDouble();
  } else {
    return (nums[nums.length ~/ 2] + nums[nums.length ~/ 2 - 1]) / 2;
  }
}
