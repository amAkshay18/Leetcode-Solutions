List<List<int>> matrixReshape(List<List<int>> mat, int r, int c) {
  List<int> flatened = mat.expand((element) => element).toList();
  if (flatened.length != r * c) return mat;
  List<List<int>> reshaped = [];
  for (int i = 0; i < r; i++) {
    reshaped.add(flatened.sublist(i * c, (i + 1) * c));
  }
  return reshaped;
}

void main() {
  List<List<int>> mat1 = [
    [1, 2],
    [3, 4]
  ];
  int r1 = 1, c1 = 4;
  List<List<int>> result1 = matrixReshape(mat1, r1, c1);
  print(result1); // Output: [[1, 2, 3, 4]]

  List<List<int>> mat2 = [
    [1, 2],
    [3, 4]
  ];
  int r2 = 2, c2 = 4;
  List<List<int>> result2 = matrixReshape(mat2, r2, c2);
  print(result2); // Output: [[1, 2], [3, 4]]
}
