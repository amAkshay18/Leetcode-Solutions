class Solution {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    List<int> common = [];
    Set<int> seen = {};
    int count = 0;
    for (int i = 0; i < A.length; i++) {
      if (A[i] == B[i]) {
        count++;
      } else {
        if (seen.contains(A[i])) {
          count++;
        }
        if (seen.contains(B[i])) {
          count++;
        }
      }
      seen.add(A[i]);
      seen.add(B[i]);
      common.add(count);
    }
    return common;
  }
}
