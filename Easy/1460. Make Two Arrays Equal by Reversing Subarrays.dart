class Solution {
  bool canBeEqual(List<int> target, List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      if (!target.contains(arr[i])) {
        return false;
      } else {
        target.remove(arr[i]);
      }
    }
    return true;
  }
}
