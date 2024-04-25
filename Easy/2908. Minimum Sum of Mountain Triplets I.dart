//solution 1
int minimumSum(List<int> nums) {
  int minSum = -1;
  for (int i = 0; i < nums.length - 2; i++) {
    for (int j = i + 1; j < nums.length - 1; j++) {
      for (int k = j + 1; k < nums.length; k++) {
        if (nums[i] < nums[j] && nums[j] < nums[k]) {
          int currentSum = nums[i] + nums[j] + nums[k];
          if (minSum == -1 || currentSum < minSum) minSum = currentSum;
        }
      }
    }
  }
  return minSum;
}

//Solution 2
int minimumSum1(List<int> nums) {
  int minSum = -1;

  // Iterate through the list once
  for (int i = 0; i < nums.length; i++) {
    int current = nums[i];
    int leftMin = -1;
    int rightMin = -1;

    // Find the minimum element to the left of current
    for (int j = 0; j < i; j++) {
      if (nums[j] < current && (leftMin == -1 || nums[j] < leftMin)) {
        leftMin = nums[j];
      }
    }

    // Find the minimum element to the right of current
    for (int k = i + 1; k < nums.length; k++) {
      if (nums[k] < current && (rightMin == -1 || nums[k] < rightMin)) {
        rightMin = nums[k];
      }
    }

    // If both leftMin and rightMin are found, calculate the sum
    if (leftMin != -1 && rightMin != -1) {
      int currentSum = leftMin + current + rightMin;
      if (minSum == -1 || currentSum < minSum) {
        minSum = currentSum;
      }
    }
  }

  return minSum;
}
