int compress(List<String> chars) {
  int index = 0;
  int i = 0;
  while (i < chars.length) {
    int j = i;
    while (j < chars.length && chars[j] == chars[i]) {
      j++;
    }
    chars[index++] = chars[i];
    if (j - i > 1) {
      for (var digit in (j - i).toString().split('')) {
        chars[index++] = digit;
      }
    }
    i = j;
  }
  return index;
}
