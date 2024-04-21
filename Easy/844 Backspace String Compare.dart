class Solution {
  bool backspaceCompare(String s, String t) {
    return processString(s) == processString(t);
  }

  String processString(String str) {
    List<String> result = [];
    for (int i = 0; i < str.length; i++) {
      if (str[i] == '#') {
        if (result.isNotEmpty) {
          result.removeLast();
        }
      } else {
        result.add(str[i]);
      }
    }
    return result.join();
  }
}
