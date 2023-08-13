/* 
2465. Number of Distinct Averages
You are given a 0-indexed integer array nums of even length.

As long as nums is not empty, you must repetitively:

Find the minimum number in nums and remove it.
Find the maximum number in nums and remove it.
Calculate the average of the two removed numbers.
The average of two numbers a and b is (a + b) / 2.

For example, the average of 2 and 3 is (2 + 3) / 2 = 2.5.
Return the number of distinct averages calculated using the above process.

Note that when there is a tie for a minimum or maximum number, any can be removed.
*/

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
