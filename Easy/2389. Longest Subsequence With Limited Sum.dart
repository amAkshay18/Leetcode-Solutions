class Solution {
  List<int> answerQueries(List<int> nums, List<int> queries) {
    nums.sort();
    List<int> ans = [];
    for (int i = 0; i < queries.length; i++) {
      int limit = queries[i];
      int sum = 0;
      int count = 0;
      for (int j = 0; j < nums.length; j++) {
        if (limit >= sum + nums[j]) {
          sum += nums[j];
          count++;
        } else {
          break;
        }
      }
      ans.add(count);
    }
    return ans;
  }
}