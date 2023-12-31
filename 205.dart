// 205. Isomorphic Strings
// Given two strings s and t, determine if they are isomorphic.

// Two strings s and t are isomorphic if the characters in s can be replaced to get t.

// All occurrences of a character must be replaced with another character while preserving the order of characters. No two
// characters may map to the same character, but a character may map to itself.

// Intuition:
// The problem requires determining whether two strings are isomorphic, meaning the characters in one string can be replaced
// to form the other string while preserving the order of characters.

// Approach:
// Your solution uses two maps (mapS and mapT) to store the characters of strings s and t respectively. It iterates through
// both strings simultaneously and records the indices of characters as their values in the maps.

// Code Explanation:
// Check Length: First, it checks if the lengths of strings s and t are different. If they are not of equal length, the
// function returns false immediately because strings of different lengths cannot be isomorphic.
// Mapping Characters: It then initializes two empty maps (mapS and mapT) to store characters from s and t as keys and
// their indices as values.
// Iteration: It loops through the strings using the variable i as an index. Within each iteration:
// It uses addEntries to update the maps, assigning the characters of s and t as keys and their indices as values.
// Comparison: After iterating through both strings, it compares the values obtained from mapS and mapT. If the values (indices)
// of corresponding characters from both strings, when joined, are equal, it returns true; otherwise, it returns false.
// Complexity:
// Time Complexity: The time complexity of this solution is O(n), where n is the length of the strings s and t. The
// loop iterates through the strings once.
// Space Complexity: The space complexity is also O(n) due to the space used by the two maps (mapS and mapT) to
// store characters and their indices.
// Simplified Summary:
// This solution maps each character of both strings to their respective indices and checks if the character indices
// in both strings match. If all characters map to the same indices in both strings, the strings are considered
// isomorphic, and the function returns true. Otherwise, it returns false. The approach is straightforward,
// iterating through the strings once to perform character mapping and comparison.
class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    Map<String, int> mapS = {};
    Map<String, int> mapT = {};
    for (int i = 0; s.length > i; i++) {
      mapS.addEntries({s[i]: i}.entries);
      mapT.addEntries({t[i]: i}.entries);
    }
    return mapS.values.join() == mapT.values.join();
  }
}
