List<List<int>> construct2DArray(List<int> original, int m, int n) {
  if ((m * n) > original.length) return [];
  List<List<int>> array = [];
  int index = 0;
  for (int i = 0; i < m; i++) {
    List<int> temp = [];
    for (int j = 0; j < n; j++) {
      temp.add(original[index]);
      index++;
    }
    array.add(temp);
  }
  return index == original.length ? array : [];
}
