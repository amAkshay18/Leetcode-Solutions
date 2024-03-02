int removeElement(List<int> nums, int val) {
  nums.removeWhere((element) => element == val);
  return nums.length;
}
