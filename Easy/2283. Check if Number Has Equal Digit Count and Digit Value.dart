class Solution {
  bool digitCount(String num) {
    for (int i = 0; i < num.length; i++) {
      int count = 0;
      for (int j = 0; j < num.length; j++) {
        if (int.parse(num[j]) == i) count++;
      }
      if (count != int.parse(num[i])) {
        return false;
      }
    }
    return true;
  }
}
