// 344. Reverse String
// Write a function that reverses a string. The input string is given as an array of characters s.
// You must do this by modifying the input array in-place with O(1) extra memory.

// Example 1:

// Input: s = ["h","e","l","l","o"]
// Output: ["o","l","l","e","h"]
// Example 2:

// Input: s = ["H","a","n","n","a","h"]
// Output: ["h","a","n","n","a","H"]

class Solution {
  // Function to reverse a list of strings in place
  void reverseString(List<String> s) {
    int i = 0; // Pointer to the start of the list
    String? temp; // Temporary variable to hold the value during swapping
    int j = s.length - 1; // Pointer to the end of the list

    // Swap elements from both ends moving towards the center
    while (i < j) {
      temp = s[i]; // Store the value at index i in temp
      s[i] = s[j]; // Replace value at index i with value at index j
      s[j] = temp; // Replace value at index j with the value stored in temp
      i++; // Move the start pointer forward
      j--; // Move the end pointer backward
    }
  }
}
