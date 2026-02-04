class Solution {
  List<int> findMissingElements(List<int> nums) {
    nums.sort();
    int smallest = nums.first;
    int largest = nums.last;
    List<int> result = [];
    for (var i = smallest; i <= largest; i++) {
      if (!nums.contains(i)) {
        result.add(i);
      }
    }
    return result;
  }
}