class Solution {
  int threeSumClosest(List<int> nums, int target) {
    int closestSum = nums[0] + nums[1] + nums[2];
    for (int i = 0; i < nums.length - 2; i++) {
        for (int j = i + 1; j < nums.length - 1; j++) {
            for (int k = j + 1; k < nums.length; k++) {
                int sum = nums[i] + nums[j] + nums[k];
                if ((target - sum).abs() < (target - closestSum).abs()) {
                    closestSum = sum;
                }
            }
        }
    }
    return closestSum;
  }
}