class Solution {
  int minOperations(List<List<int>> grid, int x) {
    List<int> values = [];
    for (var row in grid) {
      values.addAll(row);
    }
    values.sort();
    int median = values[values.length ~/ 2];
    int operations = 0;
    for (var value in values) {
      int diff = (value - median).abs();
      if (diff % x != 0) {
        return -1;
      }
      operations += diff ~/ x;
    }
    return operations;
  }
}