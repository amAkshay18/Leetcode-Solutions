// 2404. Most Frequent Even Element
// Given an integer array nums, return the most frequent even element.

// If there is a tie, return the smallest one. If there is no such element, return -1.
class Solution {
  int mostFrequentEven(List<int> nums) {
    List<int> res = [];
    int mfreq = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] % 2 == 0) {
        int f = 1;
        for (int j = i + 1; j < nums.length; j++) {
          if (nums[i] == nums[j]) {
            f++;
          }
        }
        if (f > mfreq) {
          mfreq = f;
          res = [nums[i]];
        } else if (f == mfreq) {
          mfreq = f;
          res.add(nums[i]);
        }
        print('$mfreq, $res');
      }
    }
    if (res.isEmpty) {
      return -1;
    } else if (res.length > 1) {
      res.sort();
    }
    return res[0];
  }
}
