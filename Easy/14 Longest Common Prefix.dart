class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return "";
    }
    List<String> arr = [];
    for (int i = 0; i < strs[0].length; i++) {
      int flag = 0;
      for (int j = 1; j < strs.length; j++) {
        if (strs[0][i] != strs[j][i]) {
          flag = 1;
          break;
        }
      }
      if (flag == 0) {
        arr.add(strs[0][i]);
      } else {
        break;
      }
    }
    return arr.join("");
  }
}
