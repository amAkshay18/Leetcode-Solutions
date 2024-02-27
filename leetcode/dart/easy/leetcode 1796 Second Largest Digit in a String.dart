int secondHighest(String s) {
  Set<int> nums = {};
  for (var i in s.split('')) {
    if (int.tryParse(i) != null) {
      nums.add(int.parse(i));
    }
  }
  final numsList = nums.toList();
  numsList.sort();
  return numsList.length >= 1 ? -1 : numsList[numsList.length - 2];
}
