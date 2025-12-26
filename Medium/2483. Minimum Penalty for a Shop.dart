class Solution {
  int bestClosingTime(String customers) {
    int totalYesAfterClose = 0;
    final int totalHours = customers.length;
    // Count total 'Y' customers initially
    for (int i = 0; i < totalHours; i++) {
      if (customers[i] == 'Y') totalYesAfterClose++;
    }
    int bestHourToClose = 0;
    int minimumPenalty = totalYesAfterClose;
    int totalNoBeforeClose = 0;
    for (int hour = 0; hour < totalHours; hour++) {
      if (customers[hour] == 'N') {
        totalNoBeforeClose++;
      } else {
        totalYesAfterClose--;
      }
      int currentPenalty = totalYesAfterClose + totalNoBeforeClose;
      if (currentPenalty < minimumPenalty) {
        minimumPenalty = currentPenalty;
        bestHourToClose = hour + 1;
      }
    }
    return bestHourToClose;
  }
}
