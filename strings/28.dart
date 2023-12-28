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
  int strStr(String haystack, String needle) {
    int hLength = haystack.length;
    int nLength = needle.length;

    for (int i = 0; i <= hLength - nLength; i++) {
      if (haystack.substring(i, i + nLength) == needle) {
        return i;
      }
    }
    return -1;
  }
}

// Problem Statement
// The code implements the strStr function, aiming to find the index of
// the first occurrence of a specified substring (needle) within a longer
// string (haystack). If the needle is not present in the haystack, it returns -1.

// Approach
// Variable Initialization: The code first determines the lengths of
// both the haystack and needle strings.
// Loop through the haystack: It runs a loop from the beginning of
// the haystack until it reaches a point where the entire needle
// could potentially be found within the remaining portion of the haystack.
// Comparison: Within the loop, it checks if a substring of the
// haystack (of the same length as the needle) matches the
// needle string using the substring method.
// Return: If a match is found, the code returns the index where
// the needle starts in the haystack. If no match is found, it returns -1.

// Important Note
// The code uses substring to extract portions of the haystack
// for comparison with the needle. However, it's crucial to use the equals
// method (haystack.substring(i, i + nLength).equals(needle)) instead of == to
// accurately compare strings in Java. Using == for string comparison
// might yield unexpected results since it checks for reference equality rather than content equality
