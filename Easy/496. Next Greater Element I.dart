List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
  List<int> result = [];
  for (int x in nums1) {
    int nextGreater = -1;
    bool found = false;
    for (int y in nums2.sublist(nums2.indexOf(x))) {
      if (y > x) {
        nextGreater = y;
        found = true;
        break;
      }
    }
    result.add(nextGreater);
  }
  return result;
}

// Solution2
class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    return nums1.map((x) {
      int startIndex = nums2.indexOf(x);
      int nextGreater = -1;
      for (int i = startIndex; i < nums2.length; i++) {
        if (nums2[i] > x) {
          nextGreater = nums2[i];
          break;
        }
      }
      return nextGreater;
    }).toList();
  }
}
