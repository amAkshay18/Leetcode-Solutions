// 344. Reverse String
// Write a function that reverses a string. The input string is given as an array of characters s.
// You must do this by modifying the input array in-place with O(1) extra memory.

// Example 1:

// Input: s = ["h","e","l","l","o"]
// Output: ["o","l","l","e","h"]
// Example 2:

// Input: s = ["H","a","n","n","a","h"]
// Output: ["h","a","n","n","a","H"]

// Intuition
// The algorithm uses a two-pointer approach (one at the start, i, and the other at the end, j) to
// swap elements. Initially, i points to the first element and j points to the last element.
// By swapping the elements at these positions and gradually moving i towards the end and j towards
// the start, it effectively reverses the order of the strings in the list.

// Approach
// Initialization: It starts by setting i as the first index (0) and j as the
// last index of the list (s.length - 1).
// Reversal: It uses a while loop to swap the strings at positions i and j.
// This process continues until i becomes greater than or equal to j.
// Swapping: Inside the loop, it stores the value at index i in a temporary variable called temp.
// Then, it assigns the value at index j to index i and assigns the value in temp to index j.
// This effectively swaps the positions of the strings at i and j.
// Increment & Decrement: After swapping, it increments i and decrements j to move towards
// the center of the list for the next swap.
// Completion: The process continues until i becomes greater than or equal to j, which means
// all elements have been swapped and the list is reversed.

// Complexity
// Time complexity:
// The time complexity of this solution is O(n/2) or simply O(n) where 'n' is the  number of strings
// in the list 's'. This is because the algorithm traverses half of the list to reverse it.

// Space complexity:
// The space complexity is O(1), which means the extra space used remains constant regardless of
// the size of the input list. This is because the algorithm performs the reversal in-place
// without utilizing additional space that scales with the input size.

class Solution {
  void reverseString(List<String> s) {
    int i = 0;
    String? temp;
    int j = s.length - 1;
    while (i < j) {
      temp = s[i];
      s[i] = s[j];
      s[j] = temp;
      i++;
      j--;
    }
  }
}
