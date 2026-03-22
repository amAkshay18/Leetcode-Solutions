class Solution {
  List<int> sortArrayByParityII(List<int> nums) {
    List<int> even = [], odd = [], result = [];
    Map<int, int> map = {};
    for (int element in nums) {
      if (element.isEven) {
        even.add(element);
      } else {
        odd.add(element);
      }
    }
    for (int i = 0; i < nums.length; i++) {
      if (i.isEven) {
        map.addAll({i: even.removeLast()});
      } else {
        map.addAll({i: odd.removeLast()});
      }
    }
    for (int i = 0; i < nums.length; i++) {
      result.add(map[i]!);
    }
    return result;
  }
}
