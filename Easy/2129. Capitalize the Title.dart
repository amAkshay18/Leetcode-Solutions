// Solution 1
String capitalizeTitle(String title) {
  List<String> words = title.toLowerCase().split(' ');
  List<String> modifiedWords = [];
  for (String word in words) {
    if (word.length > 2) {
      modifiedWords.add(word.substring(0, 1).toUpperCase() + word.substring(1));
    } else {
      modifiedWords.add(word);
    }
  }
  return modifiedWords.join(' ');
}

// Solution 2
String capitalizeTitle2(String title) {
  List<String> words = title.toLowerCase().split(' ');
  List<String> modifiedWords = words.map((word) {
    if (word.length > 2) {
      return word.substring(0, 1).toLowerCase() + word.substring(1);
    } else {
      return word.toLowerCase();
    }
  }).toList();
  return modifiedWords.join(' ');
}
