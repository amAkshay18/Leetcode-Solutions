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

class Solution2 {
  List<int> arrayRankTransform(List<int> arr) {
    List<int> temp = [...arr]..sort();
    Map<int, int> result = <int, int>{};
    int rank = 1;
    for (int i = 0; i < arr.length; i++) {
      if (i > 0 && temp[i] != temp[i - 1]) {
        rank++;
      }
      result[temp[i]] = rank;
    }
    return arr.map((value) => result[value]!).toList();
  }
}