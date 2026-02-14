class Solution {
  String interpret(String command) {
    return command.replaceAll("()", 'o').replaceAll("(al)", 'al');
  }
}
