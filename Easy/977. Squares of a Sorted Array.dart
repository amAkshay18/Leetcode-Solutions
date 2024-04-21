List<int> sortedSquares(List<int> nums) {
  List<int> squaredNums = nums.map((number) => number * number).toList();
  squaredNums.sort();
  return squaredNums;
}
