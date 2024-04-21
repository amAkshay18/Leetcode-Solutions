void duplicateZeros(List<int> arr) {
  int length = arr.length;
  List<int> result = [];

  for (int i = 0; i < length; i++) {
    result.add(arr[i]);

    if (arr[i] == 0) {
      result.add(0);
    }
  }
  arr.clear();
  arr.addAll(result.sublist(0, length));
}
