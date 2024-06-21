int singleNumber(List<int> nums) {
  Map<int, int> frequency = {};
  for (int i = 0; i < nums.length; i++) {
    int currentNum = nums[i];
    frequency[currentNum] = (frequency[currentNum] ?? 0) + 1;
  }
  for (int num in nums) {
    if (frequency[num] == 1) return num;
  }
  return -1;
}

void main() {
  var nums = [5, 3, 3, 5, 2, 2, 8];
  var result = singleNumber(nums);
  print(result);
}
