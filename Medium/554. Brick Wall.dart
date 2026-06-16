class Solution {
  int leastBricks(List<List<int>> wall) {
    final Map<int, int> map = {};
    int count = 0;
    for (var row in wall) {
      int sum = 0;
      for (int i = 0; i < row.length - 1; i++) {
        sum += row[i];
        map[sum] = (map[sum] ?? 0) + 1;
        count = count < map[sum]! ? map[sum]! : count;
      }
    }
    return wall.length - count;
  }
}
