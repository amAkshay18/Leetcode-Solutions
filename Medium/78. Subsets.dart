List<List<int>> subSets(List<int> nums) {
  List<List<int>> sets = [[]];
  for (int i = 0; i < nums.length; i++) {
    int length = sets.length;
    for (int j = 0; j < length; j++) {
      sets.add([...sets[j], nums[i]]);
    }
  }
  return sets;
}
