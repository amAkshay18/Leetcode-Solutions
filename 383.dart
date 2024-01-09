// 383. Ransom Note
// Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

// Each letter in magazine can only be used once in ransomNote.

// Example 1:

// Input: ransomNote = "a", magazine = "b"
// Output: false
// Example 2:

// Input: ransomNote = "aa", magazine = "ab"
// Output: false
// Example 3:

// Input: ransomNote = "aa", magazine = "aab"
// Output: true

// Constraints:

// 1 <= ransomNote.length, magazine.length <= 105
// ransomNote and magazine consist of lowercase English letters.

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<String> ransomChars = ransomNote.split('');
    List<String> magazineChars = magazine.split('');
    int count = 0;
    for (int i = 0; i < ransomChars.length; i++) {
      for (int j = 0; j < magazineChars.length; j++) {
        if (ransomChars[i] == magazineChars[j]) {
          magazineChars[j] = '0';
          count++;
          break;
        }
      }
    }
    return count == ransomChars.length;
  }
}
