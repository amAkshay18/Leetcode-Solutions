List<int> singleNumber(List<int> nums) {
  Set<int> uniqueNumbers = {};
  for (int num in nums) {
    if (uniqueNumbers.contains(num))
      uniqueNumbers.remove(num);
    else
      uniqueNumbers.add(num);
  }
  return uniqueNumbers.toList();
}
