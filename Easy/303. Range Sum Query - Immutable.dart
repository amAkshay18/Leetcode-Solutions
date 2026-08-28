class NumArray {
  List<int> arr = [];
  NumArray(List<int> nums) {
    arr = nums;
  }
  int sumRange(int left, int right) {
    int sum = 0;
    for (int i = left; i <= right; i++) {
      sum += arr[i];
    }
    return sum;
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */
