List<int> findMissingAndRepeatedValues(List<List<int>> grid) {
  int n = grid.length;
  Set<int> nums = Set.from(Iterable.generate(n * n, (index) => index + 1));
  int repeatingNum = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (nums.contains(grid[i][j])) {
        nums.remove(grid[i][j]);
      } else {
        repeatingNum = (grid[i][j]);
      }
    }
  }
  return [repeatingNum, nums.elementAt(0)];
}

void main() {
  List<List<int>> grid1 = [
    [1, 3],
    [2, 2]
  ];

  List<List<int>> grid2 = [
    [9, 1, 7],
    [8, 9, 2],
    [3, 4, 6]
  ];

  List<int> result1 = findMissingAndRepeatedValues(grid1);
  List<int> result2 = findMissingAndRepeatedValues(grid2);

  print("Result for grid1: $result1");
  print("Result for grid2: $result2");
}
