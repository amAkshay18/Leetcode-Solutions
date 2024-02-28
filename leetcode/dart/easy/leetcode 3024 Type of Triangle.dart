//Solution1
String triangleType(List<int> nums) {
  nums.sort();
  if (nums[0] + nums[1] <= nums[2]) {
    return 'none';
  } else if (nums[0] == nums[1] && nums[1] == nums[2]) {
    return 'equilateral';
  } else if (nums[0] == nums[1] || nums[1] == nums[2]) {
    return 'isosceles';
  } else {
    return 'scalene';
  }
}

//Solution2
String tringleType2(List<int> nums) {
  Set<int> sides = nums.toSet();
  if (sides.length == 1) {
    return 'equilateral';
  } else if (sides.length == 2) {
    return 'isosceles';
  } else {
    List<int> sortedSides = nums.toList()..sort();
    if (sortedSides[0] + sortedSides[1] <= sortedSides[2]) {
      return 'none';
    } else {
      return 'scalene';
    }
  }
}
