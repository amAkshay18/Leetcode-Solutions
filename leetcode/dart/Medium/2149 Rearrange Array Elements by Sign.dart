List<int> rearrangeArray(List<int> nums) {
  List<int> positive = [];
  List<int> negative = [];
  for (int num in nums) {
    if (num > 0) {
      positive.add(num);
    } else {
      negative.add(num);
    }
  }
  List<int> result = [];
  for (var i = 0; i < positive.length; i++) {
    result.add(positive[i]);
    result.add(negative[i]);
  }
  return result;
}
