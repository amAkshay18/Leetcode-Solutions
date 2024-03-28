List<List<int>> modifiedMatrix(List<List<int>> matrix) {
  int numRows = matrix.length;
  int numColumns = matrix[0].length;
  for (int i = 0; i < numColumns; i++) {
    int maxInColumn = 0;
    for (int j = 0; j < numRows; j++) {
      if (matrix[j][i] > maxInColumn) maxInColumn = matrix[j][i];
    }
    for (int j = 0; j < numRows; j++) {
      if (matrix[j][i] == -1) matrix[j][i] = maxInColumn;
    }
  }
  return matrix;
}
