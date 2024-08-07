List<int> luckyNumbers(List<List<int>> matrix) {
  Set<int> minInRows = {};
  List<int> result = [];
  for (var row in matrix) {
    int minInRow = row.reduce((a, b) => a < b ? a : b);
    minInRows.add(minInRow);
  }
  for (int col = 0; col < matrix[0].length; ++col) {
    int maxInCol = matrix[0][col];
    for (int row = 1; row < matrix.length; ++row) {
      if (matrix[row][col] > maxInCol) {
        maxInCol = matrix[row][col];
      }
    }
    if (minInRows.contains(maxInCol)) {
      result.add(maxInCol);
    }
  }
  return result;
}
