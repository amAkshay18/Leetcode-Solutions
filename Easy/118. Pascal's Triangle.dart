List<List<int>> generate(int numRows) {
  List<List<int>> triangle = [];
  for (int i = 0; i < numRows; i++) {
    List<int> row = [];
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        row.add(1);
      } else {
        row.add(triangle[i - 1][j - 1] + triangle[i - 1][j]);
      }
    }
    triangle.add(row);
  }
  return triangle;
}

void main() {
  int num = 5;
  List<List<int>> result;
  result = generate(num);
  print(result);
}
