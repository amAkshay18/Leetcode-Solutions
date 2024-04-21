int findLucky(List<int> arr) {
  int luckyNumber = -1;
  for (int i = 0; i < arr.length; i++) {
    int count = 0;
    for (int j = 0; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        count++;
      }
    }
    if (count == arr[i] && arr[i] > luckyNumber) {
      luckyNumber = arr[i];
    }
  }
  return luckyNumber;
}
