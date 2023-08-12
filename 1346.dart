// 1346. Check If N and Its Double Exist
// Given an array arr of integers, check if there exist two indices i and j such that :

// i != j
// 0 <= i, j < arr.length
// arr[i] == 2 * arr[j]
class Solution {
  bool checkIfExist(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr.length; j++) {
        if (i != j && arr[i] == 2 * arr[j]) {
          return true;
        }
      }
    }
    return false;
  }
}
