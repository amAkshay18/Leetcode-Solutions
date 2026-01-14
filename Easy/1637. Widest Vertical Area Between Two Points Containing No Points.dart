class Solution {
  int maxWidthOfVerticalArea(List<List<int>> points) {
    // Step 1:Extract x-coordinates
    List<int> xValues = [];
    for (var point in points) {
      xValues.add(point[0]);
    }
    // Step 2: Sort x-coordinates
    xValues.sort();
    // Step 3: Find maximum gap
    int maxWidth = 0;
    for (int i = 1; i < xValues.length; i++) {
      int gap = xValues[i] - xValues[i - 1];
      if (gap > maxWidth) {
        maxWidth = gap;
      }
    }
    return maxWidth;
  }
}
