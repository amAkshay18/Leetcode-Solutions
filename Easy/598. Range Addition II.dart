class Solution {
  int maxCount(int m, int n, List<List<int>> ops) {
    int minM = m;
    int minN = n;
    for (var op in ops) {
      minM = op[0] > minM ? minM : op[0];
      minN = op[1] > minN ? minN : op[1];
    }
    return minN * minM;
  }
}
