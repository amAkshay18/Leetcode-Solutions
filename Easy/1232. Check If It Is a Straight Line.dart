bool checkStraightLine(List<List<int>> coordinates) {
  if (coordinates.length == 2) return true;
  int x0 = coordinates[0][0];
  int y0 = coordinates[0][1];
  int x1 = coordinates[1][0];
  int y1 = coordinates[1][1];
  int dx = x1 - x0;
  int dy = y1 - y0;
  for (int i = 2; i < coordinates.length; i++){
    int xi = coordinates[i][0];
    int yi = coordinates[i][1];
    if (dy * (xi - x0) != dx * (yi - y0)) return false;
  }
  return true;
}