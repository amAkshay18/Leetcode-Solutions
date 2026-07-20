class Solution {
  String removeDuplicateLetters(String s) {
    List<int> lastIndex = List.filled(26, 0);
    for (int i = 0; i < s.length; i++) {
      lastIndex[s.codeUnitAt(i) - 'a'.codeUnitAt(0)] = i;
    }
    List<bool> visited = List.filled(26, false);
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      String ch = s[i];
      int index = ch.codeUnitAt(0) - 'a'.codeUnitAt(0);
      if (visited[index]) {
        continue;
      }
      while (stack.isNotEmpty &&
          stack.last.compareTo(ch) > 0 &&
          lastIndex[stack.last.codeUnitAt(0) - 'a'.codeUnitAt(0)] > i) {
        visited[stack.last.codeUnitAt(0) - 'a'.codeUnitAt(0)] = false;
        stack.removeLast();
      }
      stack.add(ch);
      visited[index] = true;
    }
    return stack.join();
  }
}