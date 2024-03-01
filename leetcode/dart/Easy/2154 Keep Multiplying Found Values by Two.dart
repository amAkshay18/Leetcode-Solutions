//Solution 1
int findFinalValue(List<int> nums, int original) {
  while (nums.contains(original)) original *= 2;
  return original;
}

//Solution2 using Recursion
int keepMultiplying(List<int> nums, int original) {
  if (!nums.contains(original)) return original;
  return keepMultiplying(nums, original * 2);
}
