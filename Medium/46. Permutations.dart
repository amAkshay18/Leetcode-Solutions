class Solution {
  final List<List<int>> res = [];
  List<List<int>> permute(List<int> nums) {     
    backtrack([], nums);
    return res;
  }
  void backtrack(List<int> cur, List<int> nums) {
    if (cur.length == nums.length) {
      res.add(List.from(cur));
      return;
    }
    for (final num in nums) {
      if (!cur.contains(num)) {
        cur.add(num);
        backtrack(cur, nums);
        cur.removeLast();
      }
    }
  }
}