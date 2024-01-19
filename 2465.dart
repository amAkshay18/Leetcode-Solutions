/*
 SIMPLE SOLUTION OF COMPLEXITY O(n^2)

class Solution {
  int distinctAverages(List<int> nums) {
      Set<double> distinctAvg = {};

      while (nums.isNotEmpty){
          int minNum = nums.reduce((a, b) => a < b ? a : b);
          int maxNum = nums.reduce((a, b) => a > b ? a : b);

          nums.remove(minNum);
          nums.remove(maxNum);

          double average = (minNum + maxNum) / 2;
          distinctAvg.add(average);
      }
      return distinctAvg.length;
  }
}
*/

int numberOfDistinctAverages(List<int> nums) {
  nums.sort();

  Set<double> distinctAverages = {};
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    double avg = (nums[left] + nums[right]) / 2.0;
    distinctAverages.add(avg);

    left++;
    right--;
  }

  return distinctAverages.length;
}
