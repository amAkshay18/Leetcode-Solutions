class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> numSet = Set<int>.from(nums);
    List<int> result = [];
    for (int i = 1; i <= nums.length; i++) {
      if (!numSet.contains(i)) {
        result.add(i);
      }
    }
    return result;
  }
}
