List<String> findRestaurant(List<String> list1, List<String> list2) {
  Map<String, int> common = {};
  for (int i = 0; i < list1.length; i++) {
    String element = list1[i];
    int indexInList2 = list2.indexOf(element);
    if (indexInList2 != -1) {
      int indexSum = i + indexInList2;
      common[element] = indexSum;
    }
  }
  int leastValue =
      common.values.reduce((min, value) => value < min ? value : min);
  List<String> leastKeys = [];
  common.forEach((key, value) {
    if (value == leastValue) {
      leastKeys.add(key);
    }
  });
  return leastKeys;
}
