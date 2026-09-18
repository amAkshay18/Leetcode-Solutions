class Solution {
  int countSpecialIntegers(List<int> nums) {
    int result = 0;

    List<int> frequency = List.filled(100, 0);

    // Count how many times each number appears
    for (int number in nums) {
      frequency[number - 1]++;
    }

    // Check each number
    for (int i = 0; i < nums.length; i++) {
      int number = nums[i];

      // We only need numbers that occur exactly 3 times
      if (frequency[number - 1] != 3) {
        continue;
      }

      // Mark this number as already checked
      frequency[number - 1] = -1;

      // Check whether the 3 occurrences are equally spaced
      for (int distance = 1; i + (distance * 2) < nums.length; distance++) {
        if (nums[i + distance] == number &&
            nums[i + (distance * 2)] == number) {
          result++;
          break;
        }
      }
    }

    return result;
  }
}
