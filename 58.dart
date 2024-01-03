// 58. Length of Last Word
// Given a string s consisting of words and spaces, return the length of the last word in the string.

// A word is a maximal
// substring
// consisting of non-space characters only.

class Solution {
  // Function to calculate the length of the last word in a string
  int lengthOfLastWord(String s) {
    // Initialize the index to the last character of the string
    int index = s.length - 1;

    // Move the index backward until a non-space character is found
    while (s[index] == " ") {
      index--;
    }

    // Initialize count to store the length of the last word
    int count = 0;

    // Count the characters of the last word from the end of the string
    while (s[index] != " ") {
      count++; // Increment count for each non-space character

      // Break if a space is encountered or if index reaches the beginning of the string
      if (s[index] == " " || index == 0) {
        break;
      }
      index--; // Move the index to the previous character
    }

    // Return the count representing the length of the last word
    return count;
  }
}
