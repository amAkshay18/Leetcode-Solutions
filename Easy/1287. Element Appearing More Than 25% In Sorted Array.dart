class Solution {
  int findSpecialInteger(List<int> arr) {
    int count = 1;
    for (int i = 1; i < arr.length; i++) {
      if (arr[i] == arr[i - 1]) {
        count++;
      } else {
        count = 1;
      }
      if (count > arr.length / 4) {
        return arr[i];
      }
    }
    return arr[0];
  }
}