List<int> arrayRankTransform(List<int> arr) {
  List<int> sortedList = List<int>.from(arr)..sort();
  Map<int, int> elementToRankMap = {};
  int currentRank = 1;
  for (int i = 0; i < sortedList.length; i++) {
    if (i > 0 && sortedList[i] != sortedList[i - 1]) {
      currentRank++;
    }
    elementToRankMap[sortedList[i]] = currentRank;
  }
  List<int> result = arr.map((element) => elementToRankMap[element]!).toList();
  return result;
}
