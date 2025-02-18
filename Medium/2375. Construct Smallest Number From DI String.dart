class Solution {
  String smallestNumber(String pattern) {
    List<int> result = [];
    List<int> stack = [];
    for (int i = 0; i <= pattern.length; i++) {
      stack.add(i + 1);
      if (i == pattern.length || pattern[i] == 'I') {
        result.addAll(stack.reversed);
        stack = [];
      }
    }
    return result.join('');
  }
}