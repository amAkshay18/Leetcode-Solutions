class Solution {
  List<int> pivotArray(List<int> nums, int pivot) {
    List<int> left = nums.where((i) => i < pivot).toList();
    List<int> middle = nums.where((i) => i == pivot).toList();
    List<int> right = nums.where((i) => i > pivot).toList();
    return [...left, ...middle, ...right];
  }
}

class Solution2 {
  List<int> pivotArray(List<int> nums, int pivot) {
    List<int> left = [];
    List<int> same = [];
    List<int> right = [];
    for (int num in nums) {
      if (num < pivot) {
        left.add(num);
      } else if (num == pivot) {
        same.add(num);
      } else {
        right.add(num);
      }
    }
    return left + same + right;
  }
}