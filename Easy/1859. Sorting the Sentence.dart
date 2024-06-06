String sortSentence(String s) {
  List<String> words = s.split(' ');
  List<String> result = List.filled(words.length, ' ');
  for (String word in words) {
    int position = int.parse(word[word.length - 1]) - 1;
    result[position] = word.substring(0, word.length - 1);
  }
  return result.join('');
}
