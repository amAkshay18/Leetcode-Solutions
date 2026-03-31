class Solution {
  String decodeString(String s) {
    List<String> stack = [];
    String currentString = '';
    int currentNum = 0;
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (isDigit(char)) {
        currentNum = currentNum * 10 + int.parse(char);
      } 
      else if (char == '[') {
        stack.add(currentString);
        stack.add(currentNum.toString());
        currentString = '';
        currentNum = 0;
      } 
      else if (char == ']') {
        int num = int.parse(stack.removeLast());
        String prevString = stack.removeLast();
        currentString = prevString + currentString * num;
      } 
      else {
        currentString += char;
      }
    }
    return currentString;
  }
  // Helper function
  bool isDigit(String ch) {
    return ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57;
  }
}