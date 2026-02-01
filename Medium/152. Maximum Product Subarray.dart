import 'dart:math';

class Solution {
  int maxProduct(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    int current = 1;
    int maxValue = nums.first;
    for (var i = 0; i < nums.length; i++) {
      for (var j = i; j < nums.length; j++) {
        if (current == 0) {
          current = 1;
        }
        current *= nums[j];
        maxValue = max(maxValue, current);
      }
      current = 1;
    }
    return maxValue;
  }
}

class Solution2 {
  int maxProduct(List<int> nums) {
    if (nums.length == 0) return 0;
    int currentMax = nums[0];
    int currentMin = nums[0];
    int maxProduct = currentMax;
    for (int i = 1; i < nums.length; i++) {
      int n = nums[i];
      int tempMax = max(n, max(currentMax * n, currentMin * n));
      currentMin = min(n, min(currentMax * n, currentMin * n));
      currentMax = tempMax;
      maxProduct = max(maxProduct, currentMax);
    }
    return maxProduct;
  }
}