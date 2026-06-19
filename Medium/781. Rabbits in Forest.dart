class Solution {
  int numRabbits(List<int> answers) {
    final Map<int, int> countMap = {};
    for (var ans in answers) {
      countMap[ans] = (countMap[ans] ?? 0) + 1;
    }
    int totalRabbits = 0;
    countMap.forEach((answer, count) {
      int groupSize = answer + 1;
      int groups = (count + groupSize - 1) ~/ groupSize;
      totalRabbits += groups * groupSize;
    });
    return totalRabbits;
  }
}