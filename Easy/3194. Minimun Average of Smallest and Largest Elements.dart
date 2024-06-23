double minimunAverage(List<int> nums) {
  List<double> averages = [];
  nums.sort();
  for (int i = 0; i < nums.length / 2; i++) {
    double average = (nums[i] + nums[nums.length - 1 - i]) / 2;
    averages.add(average);
  }
  double minAverage =
      averages.reduce((value, element) => value < element ? value : element);
  return minAverage;
}

void main() {
  var nums = [7, 8, 3, 4, 15, 13, 4, 1];
  var result = minimunAverage(nums);
  print(result);
}
