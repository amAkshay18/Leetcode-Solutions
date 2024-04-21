int findTheDistanceValue(List<int> arr1, List<int> arr2, int d) {
  int count = 0;
  for (int i = 0; i < arr1.length; i++) {
    bool isWithinDistance = true;
    for (int j = 0; j < arr2.length; j++) {
      int absoluteDifference = (arr1[i] - arr2[j]).abs();
      if (absoluteDifference <= d) {
        isWithinDistance = false;
        break;
      }
    }
    count += isWithinDistance ? 1 : 0;
  }
  return count;
}
