int scordOfString(String s) {
  final asciiValues = s.codeUnits;
  var total = 0;
  for (int i = 0; i < asciiValues.length; i++) {
    final difference = (asciiValues[i] - asciiValues[i + 1]).abs();
    total += difference;
  }
  return total;
}
