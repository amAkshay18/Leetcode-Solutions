class Solution {
  bool isPatchCrossing(String path) {
    int x = 0;
    int y = 0;
    Set<String> visited = {};
    visited.add("0,0");
    for (int i = 0; i < path.length; i++) {
      if (path[i] == 'N') {
        y++;
      } else if (path[i] == 'S') {
        y--;
      } else if (path[i] == 'E') {
        x++;
      } else if (path[i] == 'W') {
        x--;
      }
      String position = '$x,$y';
      if (visited.contains(position)) {
        return true;
      }
      visited.add(position);
    }
    return false;
  }
}
