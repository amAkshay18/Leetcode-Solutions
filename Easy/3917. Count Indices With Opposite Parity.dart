class Solution {
  List<int> countOppositeParity(List<int> nums) {
    List<int> answer = List.filled(nums.length, 0);
    int evenCount = 0;
    int oddCount = 0;
    for (int i = nums.length - 1; i >= 0; i--) {
      if (nums[i] % 2 == 0) {
        answer[i] == oddCount;
        evenCount++;
      } else {
        answer[i] = evenCount;
        oddCount++;
      }
    }
    return answer;
  }
}
