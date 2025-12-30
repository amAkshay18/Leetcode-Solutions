class Solution {
  int titleNumber(String columnTitle) {
    int columnNumber = 0;
    for (int i = 0; i < columnTitle.length; i++) {
      int value = columnTitle.codeUnitAt(i) - 'A'.codeUnitAt(0) + 1;
      columnNumber = columnNumber * 26 + value;
    }
    return columnNumber;
  }
}
