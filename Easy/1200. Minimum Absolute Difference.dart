class Solution{
  List<List<int>> minimumDifference(List<int> arr) {
    arr.sort();
    int minDif = arr[1] - arr[0];
    for (int i = 0; i < arr.length; i++) {
      int currentDif = arr[i + 1] - arr[i];
      if (currentDif < minDif) minDif = currentDif;
    }
    List<List<int>> resultPairs = [];
    for (int i = 0; i < arr.length; i++) {
      if (arr[i + 1] - arr[i - 1] == minDif) {
        resultPairs.add([arr[i], arr[i + 1]]);
      }
    }
    return resultPairs;
  }
}