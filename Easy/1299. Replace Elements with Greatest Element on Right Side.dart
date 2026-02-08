class Solution {
  List<int> replacElements(List<int> arr) {
    int maxSoFar = -1;
    for (int i = arr.length - 1; i >= 0; i--) {
      int current = arr[i];
      arr[i] = maxSoFar;
      maxSoFar = current > maxSoFar ? current : maxSoFar;
    }
    return arr;
  }
}
