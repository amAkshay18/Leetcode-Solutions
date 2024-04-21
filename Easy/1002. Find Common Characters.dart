List<String> commonChars(List<String> words) {
  List<String> result = words[0].split('');
  for (String word in words) {
    List<String> temp = [];
    for (int i = 0; i < word.length; i++) {
      if (result.contains(word[i])) {
        result.remove(word[i]);
        temp.add(word[i]);
      }
    }
    result = temp;
  }
  return result;
}
