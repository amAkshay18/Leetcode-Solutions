class Solution {
  int minElement(List<int> nums) {
    int result = 0;
    for (int i = 0; i < nums.length; i++) {
      String str = nums[i].toString();
      int sum = 0;
      for (int j = 0; j < str.length; j++) {
        sum += int.parse(str[j]);
      }
      if (result == 0 || result > sum) result = sum;
    }
    return result;
  }
}