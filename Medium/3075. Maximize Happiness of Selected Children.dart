class Solution {
  int maximumHappinessSum(List<int> happiness, int k) {
    happiness.sort((a, b) => b.compareTo(a));
    int totalHappiness = 0;
    for (int i = 0; i < k; i++) {
      int currentHappiness = happiness[i] - 1;
      if (currentHappiness > 0) {
        totalHappiness += currentHappiness;
      }
    }
    return totalHappiness;
  }
}
