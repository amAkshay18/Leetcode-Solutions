// 2540. Minimum Common Value
// Given two integer arrays nums1 and nums2, sorted in non-decreasing order, return the minimum integer common to both arrays. If there is no common integer amongst nums1 and nums2, return -1.

// Note that an integer is said to be common to nums1 and nums2 if both arrays have at least one occurrence of that integer.

// Example 1:

// Input: nums1 = [1,2,3], nums2 = [2,4]
// Output: 2
// Explanation: The smallest element common to both arrays is 2, so we return 2.
// Example 2:

// Input: nums1 = [1,2,3,6], nums2 = [2,3,4,5]
// Output: 2
// Explanation: There are two common elements in the array 2 and 3 out of which 2 is the smallest, so 2 is returned.

class Solution {
  // Function to find the minimum common integer between two arrays
  int getCommon(List<int> nums1, List<int> nums2) {
    // Creating sets from the input arrays to efficiently find common elements
    Set<int> set1 = Set.from(nums1); // Convert nums1 to a set
    Set<int> set2 = Set.from(nums2); // Convert nums2 to a set

    // Finding the intersection of the two sets (common elements)
    final intersect = set1.intersection(set2); // Get the common elements

    // If there are no common elements, return -1; otherwise, return the smallest common element
    return intersect.isEmpty
        ? -1
        : intersect
            .first; // Return the smallest common element or -1 if none found
  }
}