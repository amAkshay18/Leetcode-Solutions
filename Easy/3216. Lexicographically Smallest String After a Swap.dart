String getSmallestString(String s) {
  List<String> arr = s.split('');
  for (int i = 0; i < arr.length - 1; i++) {
    if (int.parse(arr[i]) % 2 == int.parse(arr[i + 1]) % 2 &&
        arr[i].compareTo(arr[i + 1]) > 0) {
      String temp = arr[i];
      arr[i] = arr[i + 1];
      arr[i + 1] = temp;
      return arr.join('');
    }
  }
  return s;
}
