bool checkIfPangram(String sentence) {
  return sentence.length < 26 ? false : sentence.split('').toSet().length == 26;
}
