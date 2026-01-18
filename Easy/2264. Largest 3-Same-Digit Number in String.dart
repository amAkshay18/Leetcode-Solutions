class Solution {
  String largestGoodInteger(String num) {
    String largestGoodSubstring = "";
    for (int i = 0; i < num.length - 2; i++) {
      if (num[i] == num[i + 1] && num[i] == num[i + 2]) {
        int goodInt = int.parse(num[i]);
        if (largestGoodSubstring == "" ||
            goodInt > int.parse(largestGoodSubstring[0])) {
          largestGoodSubstring = num[i] * 3;
        }
      }
    }
    return largestGoodSubstring;
  }
}
