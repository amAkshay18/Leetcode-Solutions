class Solution {
  int totalTime = 0;
  int findPoisonedDuration(List<int> timeSeries, int duration) {
  int n = timeSeries.length;
  for (int i = 0; i < n - 1; i++) {
    int currAttack = timeSeries[i];
    int nextAttack = timeSeries[i + 1];
    int timeGap = nextAttack - currAttack;
    if (timeGap < duration) {
      totalTime += timeGap;
    } else {
      totalTime += duration;
    }
  }
  totalTime += duration;
  return totalTime;
  }
}