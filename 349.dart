// 349. Intersection of Two Arrays
// Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the
// result must be unique and you may return the result in any order.

// Example 1:

// Input: nums1 = [1,2,2,1], nums2 = [2,2]
// Output: [2]
// Example 2:

// Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
// Output: [9,4]
// Explanation: [4,9] is also accepted

// Solution

/**
 * This class provides a solution to find the intersection of two integer lists.
 * It converts the input lists into sets and determines the common elements.
 * 
 * @author [Author Name]
 * @version 1.0
 * @since [Date of Creation/Last Modification]
 */
class Solution {
  /**
   * Finds the intersection of two integer lists.
   * 
   * @param nums1 The first list of integers
   * @param nums2 The second list of integers
   * @return A list containing the common elements between nums1 and nums2
   */
  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> set1 = Set.from(nums1);
    Set<int> set2 = Set.from(nums2);
    Set<int> result = set1.intersection(set2);
    return result.toList();
  }
}
