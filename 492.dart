class Solution {
  List<int> constructRectangle(int area) {
    int width = 1;
    int length = area;
    for (int w = 1; w <= area / 2; w++) {
      if (area % w == 0) {
        int l = area ~/ w;
        if (l >= w && l - w < length - width) {
          length = l;
          width = w;
        }
      }
    }
    return [length, width];
  }
}
