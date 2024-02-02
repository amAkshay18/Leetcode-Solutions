int mostWordSFound(List<String> sentences) {
  int maximumWordCount = 0;
  for (int i = 0; i < sentences.length; i++) {
    List<String> words = sentences[i].split(' ');
    int wordCount = words.length;
    if (maximumWordCount < wordCount) {
      maximumWordCount = wordCount;
    }
  }
  return maximumWordCount;
}
