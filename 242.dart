// 242. Valid Anagram

// Given two strings s and t, return true if t is an anagram of s, and false otherwise.

// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase,
// typically using all the original letters exactly once.

// Example 1:
// Input: s = "anagram", t = "nagaram"
// Output: true

// Example 2:
// Input: s = "rat", t = "car"
// Output: false

// Intuition
// When you have two anagrams (words or phrases with the same letters rearranged), sorting them alphabetically
// will result in identical strings. By sorting the characters in both strings and comparing the resulting
// sorted strings, you're effectively checking if they contain the same set of characters. If they do, and these
// characters are arranged in the same way, then the original strings are anagrams.

// Approach
// Initial Check: The function first checks if the lengths of the input strings s and t are different. If they are different,
// they cannot be anagrams, so it returns false.

// Sorting: It then proceeds to sort both strings alphabetically:

// It splits each string into individual characters (split('')), creating lists of characters.
// It uses the sort() method to arrange these characters in ascending order within each list (sortedS for
// string s and sortedT for string t).
// Comparison: After sorting both strings, the function compares the sorted versions:

// It converts the sorted character lists back into strings using join().
// Then it compares these sorted strings. If they are equal, the function returns true, indicating that the
// original strings s and t are anagrams.

// Complexity
// Time complexity:
// Sorting both strings takes O(n log n) time, where n is the length of the strings. Comparing the sorted strings takes O(n) time.

// Space complexity:
// Additional space is used for the sorted versions of the strings, which takes O(n) space, where n is the length of the strings.

// This approach is relatively simple to understand and implement, but sorting might be inefficient for very large strings due to its
// time complexity of O(n log n). However, for smaller inputs or situations where performance isn't a critical factor,
// this solution provides a straightforward way to check for anagrams

class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    List<String> sortedS = s.split('')..sort(); // Sort characters of string s
    List<String> sortedT = t.split('')..sort(); // Sort characters of string t
    return sortedS.join() == sortedT.join(); // Compare sorted strings
  }
}
