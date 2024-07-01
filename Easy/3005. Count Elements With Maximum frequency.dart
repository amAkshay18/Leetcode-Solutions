int maxFrequencyElements(List<int> nums) {
  Map<int, int> frequencyMap = {};
  for (int num in nums) {
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }
  int maxFrequency = frequencyMap.values
      .reduce((value, element) => value > element ? value : element);
  int result = 0;
  frequencyMap.forEach((key, value) {
    if (value == maxFrequency) {
      result += value;
    }
  });
  return result;
}

void main() {
  var nums = [1, 2, 2, 3, 1, 4];
  var result = maxFrequencyElements(nums);
  print(result);
}
