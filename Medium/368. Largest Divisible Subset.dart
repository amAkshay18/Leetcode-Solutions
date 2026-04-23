class Solution {
  List<int> largestDivisibleSubset(List<int> nums) {
    nums.sort();
    int n = nums.length;
    List<int> groupSize = List.filled(n, 1);
    List<int> prevElement = List.filled(n, -1);
    int maxIndex = 0;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < i; j++) {
        if (nums[i] % nums[j] == 0) {
          if (groupSize[i] < 1 + groupSize[j]) {
            groupSize[i] = 1 + groupSize[j];
            prevElement[i] = j;
          }
        }
      }
      if (groupSize[i] > groupSize[maxIndex]) {
        maxIndex = i;
      }
    }
    List<int> result = [];
    while (maxIndex != -1) {
      result.insert(0, nums[maxIndex]);
      maxIndex = prevElement[maxIndex];
    }
    return result;
  }
}