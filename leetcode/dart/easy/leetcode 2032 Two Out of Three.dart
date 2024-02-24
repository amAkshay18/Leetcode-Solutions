List<int> twoOutOfThree(List<int> nums1, List<int> nums2, List<int> nums3) {
  Set<int> set1 = nums1.toSet();
  Set<int> set2 = nums2.toSet();
  Set<int> set3 = nums3.toSet();
  Set<int> result = {};
  for (int i in set1) {
    if (set2.contains(i) || set3.contains(i)) result.add(i);
  }
  for (int i in set2) {
    if (set3.contains(i)) result.add(i);
  }
  return result.toList();
}
