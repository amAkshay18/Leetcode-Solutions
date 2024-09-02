bool checkTwoChessboards(String coordinate1, String coordinate2) {
  int column1 = coordinate1[0].codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
  int row1 = int.parse(coordinate1[1]);
  int column2 = coordinate2[0].codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
  int row2 = int.parse(coordinate2[1]);
  return (column1 + row1) % 2 == (column2 + row2) % 2;
}
