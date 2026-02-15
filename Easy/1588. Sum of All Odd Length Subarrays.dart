class Solution {
  int sumOddLengthSubarrays(List<int> arr) {
    int totalSum = 0;
    int n = arr.length;
    for (int i = 0; i < n; i++) {
      int possibleStarts = i + 1;
      int possibleEnds = n - i;
      int totalSubarrays = possibleStarts * possibleEnds;
      int oddLengthSubarrays;
      if (totalSubarrays % 2 == 0) {
        oddLengthSubarrays = totalSubarrays ~/ 2;
      } else {
        oddLengthSubarrays = (totalSubarrays ~/ 2) + 1;
      }
      totalSum += arr[i] * oddLengthSubarrays;
    }
    return totalSum;
  }
}
