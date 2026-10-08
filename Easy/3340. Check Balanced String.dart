class Solution {
  bool isBalanced(String num) {
    int odd = 0;
    int even = 0;
    for (int i = 0; i < num.length; i++) {
      if (i % 2 == 0) {
        even += int.parse(num[i]);
      } else {
        odd += int.parse(num[i]);
      }
    }
    return odd == even;
  }
}