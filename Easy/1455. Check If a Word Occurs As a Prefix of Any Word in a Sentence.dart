int isPrefixOfWord(String sentence, String searchWord) {
  List<String> words = sentence.split(" ");
  for (String str in words) {
    if (str.startsWith(searchWord)) return (words.indexOf(str) + 1);
  }
  return -1;
}
