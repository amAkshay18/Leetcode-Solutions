class Solution {
  int earliestTime(List<List<int>> tasks) {
    int earliestFinish = 1000000000;
    for (int i = 0; i < tasks.length; i++) {
      int startTime = tasks[i][0];
      int duration = tasks[i][1];
      int finishTime = startTime + duration;
      if (finishTime < earliestFinish) earliestFinish = finishTime;
    }
    return earliestFinish;
  }
}
