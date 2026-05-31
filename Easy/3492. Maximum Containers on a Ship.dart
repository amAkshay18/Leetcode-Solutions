class Solution {
  int maxContainers(int n, int w, int maxWeight) {
    int totalCells = n * n;
    int maxByWeight = maxWeight ~/ w;
    return maxByWeight < totalCells ? maxByWeight : totalCells;
  }
}