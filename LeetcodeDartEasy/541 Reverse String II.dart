String reverseStr(String s, int k) {
  List<String> letters = s.split('').toList();
  for (int i = 0; i < s.length; i += 2 * k) {
    int start = i;
    int end = (i + k - 1 < s.length - 1) ? i + k - 1 : s.length - 1;
    while (start < end) {
      var temp = letters[start];
      letters[start] = letters[end];
      letters[end] = temp;
      start++;
      end--;
    }
  }
  return letters.join();
}
