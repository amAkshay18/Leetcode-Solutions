class Solution {
  int largestInteger(List<int> nums, int k) {
    Map<int, int> count = {};
    for (int i = 0; i <= nums.length - k; i++) {
      Set<int> seen = {};
      for (int j = i; j < i + k; j++) {
        seen.add(nums[j]);
      }
      for (int num in seen) {
        count[num] = (count[num] ?? 0) + 1;
      }
    }
    int answer = -1;
    for (int num in count.keys) {
      if (count[num] == 1) {
        answer = answer > num ? answer : num;
      }
    }
    return answer;
  }
}