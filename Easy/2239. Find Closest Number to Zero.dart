int findClosestNumber(List<int> nums) {
  List<int> originalList = List.from(nums);
  List<int> absList = nums.map((num) => num.abs()).toList();
  absList.sort();
  return originalList.contains(absList[0]) ? absList[0] : -absList[0];
}

void main() {
  var nums = [2, 1, 1];
  print('Nums = $nums');
  var result = findClosestNumber(nums);
  print('Result is $result');
}
