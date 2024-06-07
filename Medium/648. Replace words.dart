String replaceWords(List<String> dictionary, String sentence) {
  List<String> words = sentence.split(' ');
  for (String root in dictionary) {
    for (var i = 0; i < words.length; i++) {
      if (words[i].startsWith(root)) words[i] = root;
    }
  }
  return words.join(' ');
}

void main() {
  var dictionary = ['cat', 'bat', 'rat'];
  var sentence = "the cattle was rattled by the battery";
  var output = replaceWords(dictionary, sentence);
  print(output);

  dictionary = ['a', 'b', 'c'];
  sentence = "aadsfasf absbs bbab cadsfafs";
  output = replaceWords(dictionary, sentence);
  print(output);
}
