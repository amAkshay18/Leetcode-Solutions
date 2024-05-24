bool canMakeSquare1(List<List<String>> grid) {
  for (int i = 0; i < 2; i++) {
    int countW = 0;
    int countB = 0;
    for (int j = 0; j < 2; j++) {
      grid[i][j] == "W" ? countW++ : countB++;
      grid[i + 1][j] == "W" ? countW++ : countB++;
    }
    if (countB >= 3 || countW >= 3) return true;
    countW = 0;
    countB = 0;
    for (int j = 0; j < 2; j++) {
      grid[i][j] == "W" ? countW++ : countB++;
      grid[i + 1][j] == "W" ? countW++ : countB++;
    }
    if (countB >= 3 || countW >= 3) return true;
  }
  return false;
}
