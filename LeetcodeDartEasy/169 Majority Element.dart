class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> countMap = {};
    for (int num in nums) {
      if (countMap.containsKey(num)) {
        countMap[num] = countMap[num]! + 1;
      } else {
        countMap[num] = 1;
      }
    }
    int majority = 0;
    int threshold = nums.length ~/ 2;
    countMap.forEach((key, value) {
      if (value > threshold) {
        majority = key;
      }
    });
    return majority;
  }
}
