class Solution {
  int appendCharacters(String s, String t) {
    int i = 0; // Pointer for s
    int j = 0; // Pointer for t
    // Traverse through s
    while (i < s.length && j < t.length) {
      if (s[i] == t[j]) {
        j++; // match found, move t pointer
      }
      i++; // always move s pointer
    }
    // Remaining characters in t need to be appended
    return t.length - 1;
  }
}
