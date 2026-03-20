class Solution {
  int findLHS(List<int> nums) {
    Map<int, int> frequency = {};
    for (int num in nums) {
      frequency[num] = (frequency[num] ?? 0) + 1;
    }
    int maxLength = 0;
    for (int key in frequency.keys) {
      if (frequency.containsKey(key + 1)) {
        int currentLength = frequency[key]! + frequency[key + 1]!;
        if (currentLength > maxLength) {
          maxLength = currentLength;
        }
      }
    }
    return maxLength;
  }
}
