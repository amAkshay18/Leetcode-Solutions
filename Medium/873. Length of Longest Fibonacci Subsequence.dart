  int lenLongestFibSubseq(List<int> arr) {
    if (arr.length < 3) return 0;
    Set<int> numSet = Set<int>.from(arr);
    int maxLength = 0;
    for (int i = 0; i < arr.length - 2; i++) {
      for (int j = i + 1; j < arr.length - 1; j++) {
        int a = arr[i];
        int b = arr[j];
        int length = 2;
        while (numSet.contains(a + b)) {
          int temp = a;
          a = b;
          b = temp + b;
          length++;
        }
        maxLength = maxLength > length ? maxLength : length;
      }
    }
    return maxLength > 2 ? maxLength : 0;
  }