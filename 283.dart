void moveZeroes(List<int> nums) {
  int limit = nums.length;
  for (int i = 0; i < limit; i++) {
    if (nums[i] == 0) {
      for (int j = i; j < limit - 1; j++) {
        nums[j] = nums[j + 1];
      }
      nums[limit - 1] = 0;
      limit--;
      i--;
    }
  }
}

void main() {
  List<int> nums = [0, 1, 0, 3, 12];
  moveZeroes(nums);
  print(nums);
}
