List<int> getConcatenation(List<int> nums) {
  return [...nums, ...nums];
}

void main() {
  List<int> nums1 = [1, 2, 1];
  List<int> nums2 = [1, 3, 2, 1];

  var result1 = getConcatenation(nums1);
  var result2 = getConcatenation(nums2);

  print(result1);
  print(result2);
}
