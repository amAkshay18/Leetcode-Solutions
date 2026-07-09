class Solution {
  int garbageCollection(List<String> garbage, List<int> travel) {
    int n = garbage.length;
    int totalTime = 0;
    int lastM = 0;
    int lastP = 0;
    int lastG = 0;
    for (int i = 0; i < n; i++) {
      totalTime += garbage[i].length;
      if (garbage[i].contains('M')) lastM = i;
      if (garbage[i].contains('P')) lastP = i;
      if (garbage[i].contains('G')) lastG = i;
    }
    List<int> prefix = List.filled(n, 0);
    for (int i = 1; i < n; i++) {
      prefix[i] = prefix[i - 1] + travel[i - 1];
    }
    totalTime += prefix[lastM];
    totalTime += prefix[lastP];
    totalTime += prefix[lastG];
    return totalTime;
  }
}