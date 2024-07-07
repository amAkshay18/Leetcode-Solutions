// Solution 1
List<int> twoSum(List<int> numbers, int target) {
  List<int> result = [];
  for (int i = 0; i < numbers.length - 1; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] == target) {
        result
          ..add(i + 1)
          ..add(j + 1);
      }
    }
  }
  return result;
}

// Solution 2
List<int> twoSum2(List<int> numbers, int target) {
  int left = 0;
  int right = numbers.length - 1;
  while (left < right) {
    int sum = numbers[left] + numbers[right];
    if (sum == target) {
      break;
    } else if (sum < target) {
      left++;
    } else {
      right--;
    }
  }
  return [left + 1, right + 1];
}
