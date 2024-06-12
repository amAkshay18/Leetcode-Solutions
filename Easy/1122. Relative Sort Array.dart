List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
  Map<int, int> frequencyMap = {};
  for (int num in arr1) {
    //(frequencyMap[num] ?? 0) + 1:
    //After determining the value (either the current count or 0 if the key does not exist),
    //it adds 1 to this value. This increments the count of num by 1.
    frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;
  }
  List<int> result = [];
  for (int num in arr2) {
    if (frequencyMap.containsKey(num)) {
      result.addAll(List.filled(frequencyMap[num]!, num));
      frequencyMap.remove(num);
    }
  }
  List<int> remainingElements = [];
  frequencyMap.forEach((key, value) {
    remainingElements.addAll(List.filled(value, key));
  });
  remainingElements.sort();
  result.addAll(remainingElements);
  return result;
}
