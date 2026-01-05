import 'dart:math';

class Solution {
  int maxMatrixSum(List<List<int>> matrix) {
    int negatives = 0, absoluteSum = 0, smallest = 100000;
    for (List<int> row in matrix) {
      for (int cell in row) {
        if (cell.isNegative) ++negatives;
        absoluteSum += cell.abs();
        smallest = min(smallest, cell.abs());
      }
    }
    return negatives.isEven ? absoluteSum : absoluteSum - smallest - smallest;
  }
}