class Solution {
  List<int> majorityElement(List<int> nums) {
    Map<int, int> map = {};
    List<int> result = [];
    for (int numb in nums) {
      map[numb] = (map[numb] ?? 0) + 1;
    }
    map.forEach((key, count) {
      if (count > nums.length / 3) {
        result.add(key);
      }
    });
    return result;
  }
}