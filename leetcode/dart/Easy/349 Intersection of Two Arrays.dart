class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> set1 = Set.from(nums1);
    Set<int> set2 = Set.from(nums2);
    Set<int> result = set1.intersection(set2);
    return result.toList();
  }
}
