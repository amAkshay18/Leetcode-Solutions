class Solution {
  int maxIceCream(List<int> costs, int coins) {
    int sum = 0;
    int count = 0;
    costs.sort((a, b) => a.compareTo(b));
    for (int i = 0; i < costs.length; i++) {
      if (sum + costs[i] <= coins) {
        sum += costs[i];
        count++;
      } else {
        break;
      }
    }
    return count;
  }
}