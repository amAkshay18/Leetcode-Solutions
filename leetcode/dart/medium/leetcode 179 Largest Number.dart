String largestNumber(List<int> nums) {
  List<String> numStrs = nums.map((n) => n.toString()).toList();
  for (int i = 0; i < numStrs.length; i++) {
    for (int j = i + 1; j < numStrs.length; j++) {
      if (double.parse(numStrs[i] + numStrs[j]) <
          double.parse(numStrs[j] + numStrs[i])) {
        String temp = numStrs[i];
        numStrs[i] = numStrs[j];
        numStrs[j] = temp;
      }
    }
  }
  if (numStrs[0] == '0') {
    return '0';
  }
  return numStrs.join('');
}



// Solution 2

  // String largestNumber(List<int> nums) {
  //   List<String> numStrs = nums.map((n) => n.toString()).toList();
  //   numStrs.sort((a, b) => (b+a).compareTo(a+b));
  //   if(numStrs[0] == '0') {
  //     return '0';
  //   }
  //   return numStrs.join('');
  // }