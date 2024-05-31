List<int> sortArrayByParity(List<int> nums) {
  List<int> odd = [];
  List<int> even = [];
  for (var num in nums) {
    if (num.isEven)
      even.add(num);
    else
      odd.add(num);
  }
  return [...even, ...odd];
}
