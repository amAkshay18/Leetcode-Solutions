class Solution {
  String largestOddNumber(String num) {
    List<String> result = num.split('');
    for (int i = result.length - 1; i >= 0; i--) {
      if (int.parse(result[i]) % 2 != 0) {
        return num.substring(0, i + 1);
      }
    }
    return "";
  }
}