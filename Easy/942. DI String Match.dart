List<int> diStringMatch(String s) {
  List<int> nums = [];
  int min = 0;
  int max = s.length;
  for (int i = 0; i < s.length; i++) {
    if (s[i] == 'I') {
      nums.add(min++);
    } else {
      nums.add(max--);
    }
  }
  nums.add(min);
  return nums;
}
