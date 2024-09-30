int minPartitions(String n) {
  if (n.contains('9')) return 9;
  List<String> numberString = n.split('');
  numberString.sort();
  return int.parse(numberString.last);
}
