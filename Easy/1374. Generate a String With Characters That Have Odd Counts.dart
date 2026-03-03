class Solution {
  String generateTheString(int n) {
    return (n % 2 == 1) ? 'a' * n : 'a' * (n - 1) + 'b';
  }
}
