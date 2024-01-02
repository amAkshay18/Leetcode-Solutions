// 2553. Separate the Digits in an Array

// Given an array of positive integers nums, return an array answer that consists of the digits of
// each integer in nums after separating them in the same order they appear in nums.

// To separate the digits of an integer is to get all the digits it has in the same order.

// For example, for the integer 10921, the separation of its digits is [1,0,9,2,1].

// Example 1:

// Input: nums = [13,25,83,77]
// Output: [1,3,2,5,8,3,7,7]
// Explanation:
// - The separation of 13 is [1,3].
// - The separation of 25 is [2,5].
// - The separation of 83 is [8,3].
// - The separation of 77 is [7,7].
// answer = [1,3,2,5,8,3,7,7]. Note that answer contains the separations in the same order.
// Example 2:

// Input: nums = [7,1,3,9]
// Output: [7,1,3,9]
// Explanation: The separation of each integer in nums is itself.
// answer = [7,1,3,9].

class Solution {
  /// Separates digits from a list of integers.
  ///
  /// [nums]: List of integers to be separated into individual digits.
  ///
  /// Returns a list containing individual digits extracted from the input list.
  List<int> separateDigits(List<int> nums) {
    // List to store separated numbers
    List<int> separatedNumbers = [];

    // Iterate through each number in the input list
    for (int num in nums) {
      // If the number is a single digit, add it to the separatedNumbers list
      if (num < 10) {
        separatedNumbers.add(num);
      } else {
        // If the number has multiple digits, convert it to a string
        String numStr = num.toString();

        // Iterate through each character in the string representation of the number
        for (int i = 0; i < numStr.length; i++) {
          // Parse each character back to an integer and add it to the separatedNumbers list
          separatedNumbers.add(int.parse(numStr[i]));
        }
      }
    }

    // Return the list containing separated digits
    return separatedNumbers;
  }
}
