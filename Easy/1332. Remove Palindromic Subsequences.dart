class Solution {
  int removePalindromeSub(String s) {
    List<String> str = s.split('');
    if (str.reversed.join() == s) {
      return 1;
    } else {
      return 2;
    }
  }
}