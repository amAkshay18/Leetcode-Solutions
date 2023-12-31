// 35. Search Insert Position
// Given a sorted array of distinct integers and a target value, return the index if the target is found. If not,
// return the index where it would be if it were inserted in order.
// You must write an algorithm with O(log n) runtime complexity

class Solution {
  // Function to find the index of the target element in a sorted array
  int searchInsert(List<int> nums, int target) {
    // Initialize pointers for binary search
    int low = 0; // Pointer to the start of the array
    int high = nums.length - 1; // Pointer to the end of the array

    // Perform binary search until low meets or crosses high
    while (low <= high) {
      int mid = (low + high) ~/ 2; // Calculate the middle index

      // If the target is found at the middle index, return the index
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        // If the target is greater, move low to mid + 1 (search in the right half)
        low = mid + 1;
      } else {
        // If the target is smaller, move high to mid - 1 (search in the left half)
        high = mid - 1;
      }
    }

    // If the target is not found, return the index where it would be if inserted
    return low;
  }
}
