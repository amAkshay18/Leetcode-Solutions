class Solution {
  String removeDuplicates(String s) {
    List<String> stack = [];
    for (String ch in s.split('')) {
      if (stack.isNotEmpty && stack.last == ch) {
        stack.removeLast();
      } else {
        stack.add(ch);
      }
    }
    return stack.join('');
  }
}
