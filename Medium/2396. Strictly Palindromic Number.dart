bool isStrictlyPalindromic(int n) {
  for (int i = 2; i < n; i++) {
    String str = n.toRadixString(i);
    int left = 0;
    int right = str.length - 1;
    while (left <= right) {
      if (str[left] != str[right]) return false;
      left++;
      right++;
    }
  }
  return true;
}
