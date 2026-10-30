class Solution {
  List<int> lastVisitedIntegers(List<int> nums) {
    List<int> seen = [];
    List<int> ans = [];
    int consecutiveMinusOnes = 0;
    for (int num in nums) {
      if (num == -1) {
        consecutiveMinusOnes++;
        if (consecutiveMinusOnes <= seen.length) {
          ans.add(seen[consecutiveMinusOnes - 1]);
        } else {
          ans.add(-1);
        }
      } else {
        seen.insert(0, num);
        consecutiveMinusOnes = 0;
      }
    }
    return ans;
  }
}
