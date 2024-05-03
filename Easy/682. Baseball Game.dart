int calPoints(List<String> operations) {
  List<int> values = [];
  for (var element in operations) {
    if (element == 'C') {
      values.removeLast();
    } else if (element == 'D') {
      values.add(values.last * 2);
    } else if (element == '+') {
      values.add(values.last + values[values.length - 2]);
    } else {
      values.add(int.parse(element));
    }
  }
  return values.isEmpty
      ? 0
      : values.reduce((value, element) => value + element);
}
