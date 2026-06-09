class Solution {
  int oddCells(int n, int m, List<List<int>> indices) {
    int count = 0;
    List<int> row = List<int>.filled(n, 0);
    List<int> col = List<int>.filled(m, 0); 
    for (int i = 0; i < indices.length; i++) {
      row[indices[i][0]]++;
      col[indices[i][1]]++;  
    }
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
        if ((row[i] + col[j]) % 2 != 0) count++;
      }
    }
    return count;  
  }
}