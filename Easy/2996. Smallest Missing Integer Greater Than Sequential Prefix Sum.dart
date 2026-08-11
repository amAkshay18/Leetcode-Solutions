class Solution {
  int missingInteger(List<int> nums) {
    int sum = nums[0];

    // Find the longest sequential prefix
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == nums[i - 1] + 1) {
        sum += nums[i];
      } else {
        break;
      }
    }

    // Find the smallest missing number
    int answer = sum;

    while (nums.contains(answer)) {
      answer++;
    }

    return answer;
  }
}