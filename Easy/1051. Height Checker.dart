int heightChecker(List<int> heights) {
  List<int> expectedHeights = List.from(heights);
  expectedHeights.sort();
  int count = 0;
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != expectedHeights[i]) {
      count++;
    }
  }
  return count;
}
