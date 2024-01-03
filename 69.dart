// 69. Sqrt(x)
// Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

// You must not use any built-in exponent function or operator.

class Solution {
  // Function to compute the square root of a non-negative integer
  int mySqrt(int x) {
    if (x == 0) return 0; // If x is 0, the square root is 0

    int left = 1; // Left boundary for the binary search
    int right = x; // Right boundary for the binary search
    int result = 0; // Variable to store the result

    // Perform binary search to find the square root
    while (left <= right) {
      int mid = left + (right - left) ~/ 2; // Calculate the middle value

      // Check if the square of mid is less than or equal to x
      if (mid <= x ~/ mid) {
        result = mid; // Update result and move the left boundary to mid + 1
        left = mid + 1;
      } else {
        right = mid - 1; // Adjust the right boundary
      }
    }

    return result; // Return the calculated square root
  }
}
