class Solution {
  /// [nums] is a list of integers.
  /// [queries] is a list of lists of integers.
  int minZeroArray(List<int> nums, List<List<int>> queries) {
    List<int> temp = List.filled(nums.length + 1, 0);
    int use = 0;
    int sum = 0;

    for (int i = 0; i < nums.length; i++) {
      sum += temp[i];

      while (nums[i] - sum > 0) {
        if (queries.length == use) {
          return -1;
        }
        List<int> query = queries[use++];
        if (i > query[1]) {
          continue;
        }
        if (i >= query[0]) {
          sum += query[2];
        } else {
          temp[query[0]] += query[2];
        }
        temp[query[1] + 1] -= query[2];
      }
    }
    return use;
  }
}