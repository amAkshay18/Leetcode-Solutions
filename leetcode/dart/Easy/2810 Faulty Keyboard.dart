class Solution {
  String finalString(String s) {
    String result = "";
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'i') {
        result = result.split("").reversed.join();
      } else {
        result = result + s[i];
      }
    }
    return result;
  }
}
