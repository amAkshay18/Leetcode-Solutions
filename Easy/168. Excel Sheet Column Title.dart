class Solution {
  String convertToTile(int columnNumber) {
    String columnTitle = '';
    while (columnNumber > 0) {
      columnNumber--;
      int remainder = columnNumber % 26;
      columnTitle = String.fromCharCode(remainder + 65) + columnTitle;
      columnNumber ~/= 26;
    }
    return columnTitle;
  }
}
