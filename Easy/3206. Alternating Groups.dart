int numberOfAlternatingGroups(List<int> colors) {
  int n = colors.length;
  int count = 0;
  for (int i = 0; i < n; i++) {
    if (colors[i] == colors[(i + 1) % n] && colors[i] != colors[(i + 1) % n]) {
      count++;
    }
  }
  return count;
}
