int countNegatives1(List<List<int>> grid) {
  int count = 0;
  for (int i = 0; i < grid.length; i++) {
    for (int j = 0; j < grid[i].length; j++) {
      if (grid[i][j] < 0) count++;
    }
  }
  return count;
}

int countNegative2(List<List<int>> grid) {
  return grid.fold(0, (count, row) => row.where((num) => num < 0).length);
}
