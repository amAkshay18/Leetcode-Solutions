class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;
    String reversed = x.toString().split('').reversed.join();
    int y = int.parse(reversed);
    return (x == y) ? true : false;
  }
}
