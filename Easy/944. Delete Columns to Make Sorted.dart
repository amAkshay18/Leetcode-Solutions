class Solution {
  int minDeletionSize(List<String> strs) {
    int columns = 0;
    for (int i = 0; i < strs.first.length; i++) {
      for (int j = 1; j < strs.length; j++) {
        if (strs[j].codeUnitAt(i) < strs[j - 1].codeUnitAt(i)) {
          columns++;
          break;
        }
      }
    }
    return columns;
  }
}
