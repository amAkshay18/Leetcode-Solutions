// 20. Valid Parentheses

// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.

// Example 1:

// Input: s = "()"
// Output: true
// Example 2:

// Input: s = "()[]{}"
// Output: true
// Example 3:

// Input: s = "(]"
// Output: false

// Constraints:

// 1 <= s.length <= 104
// s consists of parentheses only '()[]{}'.

class Solution {
  bool isValid(String s) {
    var a = '()';
    var b = '[]';
    var c = '{}';

    while (s.isNotEmpty) {
      if (s.contains(a)) {
        s = s.replaceAll(a, '');
      } else if (s.contains(b)) {
        s = s.replaceAll(b, '');
      } else if (s.contains(c)) {
        s = s.replaceAll(c, '');
      } else {
        return false;
      }
    }
    return true;
  }
}
