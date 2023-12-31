// 14. Longest Common Prefix
// Write a function to find the longest common prefix string amongst an array of strings.
// If there is no common prefix, return an empty string "".

class Solution {
  // Function to find the longest common prefix among an array of strings
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return ""; // Return an empty string if the input list is empty
    }

    List<String> arr =
        []; // Initialize an empty list to store the common prefix

    // Iterate through each character position of the first string in the list
    for (int i = 0; i < strs[0].length; i++) {
      int flag = 0; // Flag to track if a mismatch is found

      // Iterate through the remaining strings in the list starting from the second one
      for (int j = 1; j < strs.length; j++) {
        // If the character at the current position in the first string differs from other strings, set flag and break
        if (strs[0][i] != strs[j][i]) {
          flag = 1;
          break;
        }
      }

      // If no mismatch was found in the current position among all strings, add the character to the common prefix list
      if (flag == 0) {
        arr.add(strs[0][i]);
      } else {
        break; // Break the loop if a mismatch is encountered
      }
    }

    return arr.join(
        ""); // Return the common prefix as a single string by joining the characters
  }
}
