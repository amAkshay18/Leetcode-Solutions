int getLucky(String s, int k) {
  String nums = '';
  for (int i = 0; i < s.length; i++) {
    nums += (s.codeUnitAt(i) - 96).toString();
  }
  int sum = 0;
  while (k != 0) {
    sum = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += int.parse(nums[i]);
    }
    nums = sum.toString();
    k--;
  }
  return sum;
}
