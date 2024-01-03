// 88. Merge Sorted Array
// You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

// Merge nums1 and nums2 into a single array sorted in non-decreasing order.

// The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

class Solution {
  // This function merges two sorted lists nums1 and nums2 into nums1.
  // Parameters:
  // - nums1: the first list containing m elements (initially)
  // - m: the number of elements in nums1
  // - nums2: the second list containing n elements
  // - n: the number of elements in nums2
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    // Remove elements from nums1 beyond index m (elements not to be used).
    nums1.removeRange(m, nums1.length);

    // Remove elements from nums2 beyond index n (elements not to be used).
    nums2.removeRange(n, nums2.length);

    // Add all elements from nums2 to the end of nums1.
    nums1.addAll(nums2);

    // Sort the merged nums1 list in ascending order.
    nums1.sort();
  }
}
