class Solution {
  int diagonalSum(List<List<int>> mat) {
    int result = 0;
    for (int i = 0; i < mat.length; i++) {
      if (mat.length.isOdd && i == ((mat.length - 1) ~/ 2)) {
        result += mat[i][i];
        continue;
      }
      result += mat[i][i];
      result += mat[i][mat[0].length - 1 - i];
    }
    return result;
  }
}
