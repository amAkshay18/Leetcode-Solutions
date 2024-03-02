class Solution {
  int getCommon(List<int> nums1, List<int> nums2) {
    Set<int> set1 = Set.from(nums1);
    Set<int> set2 = Set.from(nums2);
    final intersect = set1.intersection(set2);
    return intersect.isEmpty ? -1 : intersect.first;
  }
}
