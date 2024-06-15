int minNumber(List<int> nums1, List<int> nums2) {
  Set<int> setNums2 = Set.from(nums2);
  int? smallestCommon = null;
  for (int num in nums1) {
    if (setNums2.contains(num)) {
      if (smallestCommon == null || smallestCommon > num) smallestCommon = num;
    }
  }
  if (smallestCommon != null) return smallestCommon;
  int s1 = nums1.reduce((a, b) => a < b ? a : b);
  int s2 = nums2.reduce((a, b) => a < b ? a : b);
  String concat1 = s1.toString() + s2.toString();
  String concat2 = s2.toString() + s1.toString();
  int smallest = (int.parse(concat1) < int.parse(concat2))
      ? int.parse(concat1)
      : int.parse(concat2);
  return smallest;
}
