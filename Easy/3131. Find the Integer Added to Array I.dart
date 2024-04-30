int addInteger(List<int> nums1, List<int> nums2) {
  int result = 0;
  nums1.sort();
  nums2.sort();
  for (int i = 0; i < nums1.length; i++) {
    for (int j = 0; j < nums2.length; j++) {
      result = nums2[j] - nums1[i];
    }
  }
  return result;
}
