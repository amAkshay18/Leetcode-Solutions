String mergeAlternatively(String word1, String word2) {
  String result = '';
  int i = 0;
  int j = 0;
  while (i < word1.length || j < word2.length) {
    if (i < word1.length) {
      result += word1[i];
      i++;
    }
    if (j < word2.length) {
      result += word2[j];
      j++;
    }
  }
  return result;
}

void main() {
  String word1 = 'abc';
  String word2 = 'pqr';
  String result = mergeAlternatively(word1, word2);
  print(result);
}
