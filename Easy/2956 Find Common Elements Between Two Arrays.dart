List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
  int count1 = 0;
  int count2 = 0;
  for (int i = 0; i < nums1.length; i++) {
    if (nums2.contains(nums1[i])) {
      count1++;
    }
  }
  for (int j = 0; j < nums2.length; j++) {
    if (nums1.contains(nums2[j])) {
      count2++;
    }
  }
  return [count1, count2];
}
