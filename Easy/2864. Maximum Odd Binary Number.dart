String maximumOddBinaryNumber(String s) {
  List<String> binaryDigits = s.split('');
  binaryDigits.sort((a, b) => int.parse(b).compareTo(int.parse(a)));
  binaryDigits.removeAt(0);
  binaryDigits.add('1');
  return binaryDigits.join();
}
