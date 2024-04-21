List<String> findRelativeRanks(List<int> score) {
  Map<int, String> rankMap = {};
  List<int> sortedScore = List<int>.from(score)..sort((a, b) => b.compareTo(a));
  for (int i = 0; i < score.length; i++) {
    if (i == 0) {
      rankMap[sortedScore[i]] = "Gold Medal";
    } else if (i == 1) {
      rankMap[sortedScore[i]] = "Silver Medal";
    } else if (i == 2) {
      rankMap[sortedScore[i]] = "Bronze Medal";
    } else {
      rankMap[sortedScore[i]] = (i + 1).toString();
    }
  }
  return score.map((s) => rankMap[s]!).toList();
}
