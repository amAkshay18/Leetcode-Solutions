// 1550. Three Consecutive Odds
// Given an integer array arr, return true if there are three consecutive odd numbers in the array. Otherwise, return false.

class Solution {
  bool threeConsecutiveOdds(List<int> arr) {
    int count = 0;
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] % 2 != 0) {
        count++;
        if (count == 3) {
          return true;
        }
      } else {
        count = 0;
      }
    }
    return false;
  }
}
