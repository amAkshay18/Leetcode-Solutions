//Method1
String truncateSentence1(String s, int k) {
  List<String> words = s.split(' ');
  List<String> truncateWords = words.sublist(0, k);
  return truncateWords.join(' ');
}

//Method2
String truncateSentence2(String s, int k) {
  List<String> words = s.split(' ');
  k = k.clamp(0, words.length);
  return words.take(k).join(' ');
}
