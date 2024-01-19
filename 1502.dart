// 1502. Can Make Arithmetic Progression From Sequence

// A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.

// Given an array of numbers arr, return true if the array can be rearranged to form an arithmetic progression. Otherwise, return false.

// Example 1:

// Input: arr = [3,5,1]
// Output: true
// Explanation: We can reorder the elements as [1,3,5] or [5,3,1] with differences 2 and -2 respectively, between each consecutive elements.
// Example 2:

class Solution {
  bool canMakeArithmeticProgression(List<int> arr) {
    arr.sort();
    for (int i = 1; i < arr.length - 1; i++) {
      if (arr[i] - arr[i - 1] != arr[i + 1] - arr[i]) {
        return false;
      }
    }
    return true;
  }
}
