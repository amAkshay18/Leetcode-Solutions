class Solution {
  int minimumBoxes(List<int> apple, List<int> capacity) {
    int totalApples = apple.reduce((a, b) => a + b);
    capacity.sort((a, b) => b - a);
    int usedCapacity = 0;
    int count = 0;
    for (var cap in capacity) {
      usedCapacity += cap;
      count++;
      if (usedCapacity >= totalApples) {
        return count;
      }
    }
    return count;
  }
}