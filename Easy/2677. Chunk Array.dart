class Solution {
  List<List<int>> chunk(List<int> arr, int size) {
    List<List<int>> result = [];
    for (int i = 0; i < arr.length; i += size) {
      int end = i + size;
      if (end > arr.length) {
        end = arr.length;
      }
      result.add(arr.sublist(i, end));
    }
    return result;
  }
}
