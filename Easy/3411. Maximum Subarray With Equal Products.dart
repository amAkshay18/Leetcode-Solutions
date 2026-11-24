
class Solution {
  int maxLength(List<int> nums) {
    int maxLen = 0;
    for (int i = 0; i < nums.length; i++) {
      int product = 1;
      int gcd = nums[i];
      int lcm = nums[i];
      for (int j = i; j < nums.length; j++) {
        product *= nums[j];
        gcd = findGCD(gcd, nums[j]);
        lcm = (lcm * nums[j]) ~/ findGCD(lcm, nums[j]);
        if (product == gcd * lcm) {
          int length = j - i + 1;
          if (length > maxLen) {
            maxLen = length;
          }
        }
      }
    }
    return maxLen;
  }
  int findGCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}
