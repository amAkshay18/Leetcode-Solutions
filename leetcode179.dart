//179. Largest Number
//Given a list of non-negative integers nums, arrange them such that they form the largest number and return it.
// Since the result may be very large, so you need to return a string instead of an integer.

class Solution {
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
    print(numStrs);
    if (numStrs[0] == '0') {
      return '0';
    }
    return numStrs.join('');
  }

  // String largestNumber(List<int> nums) {
  //   List<String> numStrs = nums.map((n) => n.toString()).toList();
  //   numStrs.sort((a, b) => (b+a).compareTo(a+b));
  //   if(numStrs[0] == '0') {
  //     return '0';
  //   }
  //   return numStrs.join('');
  // }
}
