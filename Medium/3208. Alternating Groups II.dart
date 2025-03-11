  int numberOfAlternatingGroups(List<int> colors, int k) {
    int l = 0;
    int count = 0;
    for (int i = 0; i < k; i++) {
      colors.add(colors[i]);
    }
    int n = colors.length;
    for (int r = 1; r < n - 1; r++) {
      if (colors[r] == colors[r - 1]) {
        l = r;
      }
      int subArraySize = r - l + 1;
      if (subArraySize >= k) {
        count++;
      }
    }
    return count;
  }