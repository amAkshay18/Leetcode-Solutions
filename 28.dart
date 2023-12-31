// 28. Find the Index of the First Occurrence in a String
// Solved
// Easy
// Topics
// Companies
// Given two strings needle and haystack, return the index of the
// first occurrence of needle in haystack, or -1 if needle is not part of haystack.

// Example 1:

// Input: haystack = "sadbutsad", needle = "sad"
// Output: 0
// Explanation: "sad" occurs at index 0 and 6.
// The first occurrence is at index 0, so we return 0.
// Example 2:

// Input: haystack = "leetcode", needle = "leeto"
// Output: -1
// Explanation: "leeto" did not occur in "leetcode", so we return -1.

// Constraints:

// 1 <= haystack.length, needle.length <= 104
// haystack and needle consist of only lowercase English characters.

class Solution {
  // Function to find the index of the first occurrence of a substring within a string
  int strStr(String haystack, String needle) {
    int hLength = haystack.length; // Length of the haystack string
    int nLength = needle.length; // Length of the needle string

    // Iterate through the haystack string up to the possible starting index of a substring match
    for (int i = 0; i <= hLength - nLength; i++) {
      // Check if the substring of haystack starting at index i and having the length of needle matches needle
      if (haystack.substring(i, i + nLength) == needle) {
        return i; // Return the starting index of the first occurrence of the substring
      }
    }

    return -1; // Return -1 if the substring is not found in the haystack
  }
}
