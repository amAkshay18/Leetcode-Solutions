class Solution {
  List<int> kWeakestRows(List<List<int>> mat, int k) {
    List<List<int>> rows = [];
    for (int i = 0; i < mat.length; i++) {
      int soldiers = countSoldiers(mat[i]);
      rows.add([soldiers, i]);
    }
    rows.sort((a, b) {
      if (a[0] != b[0]) {
        return a[0] - b[0];
      } else {
        return a[1] - b[1];
      }
    });
    List<int> result = [];
    for (int i = 0; i < k; i++) {
      result.add(rows[i][1]);
    }
    return result;
  }

  int countSoldiers(List<int> row) {
    int left = 0;
    int right = row.length - 1;
    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      if (row[mid] == 1) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return left;
  }
}
