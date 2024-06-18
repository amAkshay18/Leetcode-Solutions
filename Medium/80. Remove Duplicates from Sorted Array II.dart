int removeDuplicates(List<int> nums) {
  if (nums.length <= 2) return nums.length;
  int k = 2;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != nums[k - 2]) {
      nums[k] = nums[i];
      k++;
    }
  }
  return k;
}

void main() {
  var arr = [1, 1, 1, 2, 2, 3];
  var result = removeDuplicates(arr);
  print(result);
  arr = [0, 0, 1, 1, 1, 1, 1, 2, 3, 3];
  result = removeDuplicates(arr);
  print(result);
}
