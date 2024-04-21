String reverseWords(String s) {
  List result = [];
  List words = s.split(" ");

  for (int i = 0; i < words.length; i++) {
    result.add(words[i].split("").reversed.join(""));
  }
  return result.join(" ");
}
