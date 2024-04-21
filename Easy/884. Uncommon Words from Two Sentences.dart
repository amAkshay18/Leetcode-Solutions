List<String> uncommonFromSentences(String s1, String s2) {
  List<String> wordsFromS1 = s1.split(' ');
  List<String> wordsFromS2 = s2.split(' ');
  Map<String, int> wordFrequency = {};
  for (var word in wordsFromS1) {
    wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
  }
  for (var word in wordsFromS2) {
    wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
  }
  List<String> result = [];
  for (var word in wordFrequency.keys) {
    if (wordFrequency[word] == 1) {
      result.add(word);
    }
  }
  return result;
}
