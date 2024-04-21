class Solution {
  String makeGood(String s) {
    String result = s;
    if (s.length > 1) {
      for (int i = 0; i < result.length - 1; i++) {
        if (result[i] != result[i + 1] &&
            result[i].toLowerCase() == result[i + 1].toLowerCase()) {
          result = result.replaceRange(i, i + 1, '');
          result = result.replaceRange(i, i + 1, '');
          print(result);
          i = -1;
        }
      }
    }
    return result;
  }
}
