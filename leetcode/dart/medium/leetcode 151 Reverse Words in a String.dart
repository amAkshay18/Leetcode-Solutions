String reverseWords(String s) {
  List<String> words = s.trim().split(RegExp(r'\s+'));
  words = words.reversed.toList();
  return words.join();
}
