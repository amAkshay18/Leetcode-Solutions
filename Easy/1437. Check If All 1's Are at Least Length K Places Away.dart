class Solution {
  bool kLengthApart(List<int> nums, int k) {
    int distance = k;
    for (int num in nums) {
      if (num == 0) {
        distance++;
      } else if (num == 1 && distance >= k) {
        distance = 0;
      } else {
        return false;
      }
    }
    return true;
  }
}
