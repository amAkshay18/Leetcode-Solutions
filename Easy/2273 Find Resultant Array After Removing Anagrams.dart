List<String> removeAnagrams(List<String> words) {
  List<String> uniqueWords = [];
  String previousWord = "";
  for (String word in words) {
    List<String> characters = word.split('');
    characters.sort();
    String sortedWord = characters.join();
    if (sortedWord != previousWord) {
      uniqueWords.add(word);
    }
    previousWord = sortedWord;
  }
  return uniqueWords;
}
