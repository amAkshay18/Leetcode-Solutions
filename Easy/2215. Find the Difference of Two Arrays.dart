List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
  Set<int> result1 = {};
  Set<int> result2 = {};
  for (int num in nums1) {
    if (!nums2.contains(num)) result1.add(num);
  }
  for (int num in nums2) {
    if (!nums1.contains(num)) result2.add(num);
  }
  return [result1.toList(), result2.toList()];
}

void main() {
  // Example 1
  List<int> nums1 = [1, 2, 3];
  List<int> nums2 = [2, 4, 6];
  List<List<int>> result1 = findDifference(nums1, nums2);
  print(result1);

  // Example 2
  List<int> nums3 = [1, 2, 3, 3];
  List<int> nums4 = [1, 1, 2, 2];
  List<List<int>> result2 = findDifference(nums3, nums4);
  print(result2);
}
