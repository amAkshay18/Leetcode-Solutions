String mostCommonWord(String paragraph, List<String> banned) {
  List<String> words = paragraph.toLowerCase().split(RegExp(r'\W+'));
  Map<String, int> wordFrequency = {};
  for (String word in words) {
    if (word.isEmpty) continue;
    if (!banned.contains(word)) {
      wordFrequency[word] = (wordFrequency[word] ?? 0) + 1;
    }
  }
  String mostCommon = '';
  int maxFrequency = 0;
  wordFrequency.forEach((key, value) {
    if (value > maxFrequency) {
      maxFrequency = value;
      mostCommon = key;
    }
  });
  return mostCommon;
}
