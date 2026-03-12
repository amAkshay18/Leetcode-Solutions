class Solution {
  int findClosest(int x, int y, int z) {
    int distance1 = (x - z).abs();
    int distance2 = (y - z).abs();
    if (distance1 < distance2) {
      return 1;
    } else if (distance2 < distance1) {
      return 2;
    } else {
      return 0;
    }
  }
}
