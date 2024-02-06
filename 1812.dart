bool squareIsWhite(String coordinates) {
  List<String> odd = ['b', 'd', 'f', 'h'];
  List<String> even = ['a', 'c', 'e', 'g'];
  int row = int.parse(coordinates[1]);
  if (even.contains(coordinates[0]) && row % 2 == 0) {
    return true;
  } else if (odd.contains(coordinates[0]) && row % 2 != 0) {
    return true;
  }
  return false;
}
