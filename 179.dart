//179. Largest Number
//Given a list of non-negative integers nums, arrange them such that they form the largest number and return it.
// Since the result may be very large, so you need to return a string instead of an integer.

class Solution {
  // This function rearranges the numbers in the list to form the largest possible number.
  // It takes a list of integers as input and returns a string representing the largest number.
  // Parameters:
  // - nums: a list of integers

  String largestNumber(List<int> nums) {
    // Convert the integers to strings for comparison purposes.
    List<String> numStrs = nums.map((n) => n.toString()).toList();

    // Perform sorting based on a custom comparator to form the largest number.
    for (int i = 0; i < numStrs.length; i++) {
      for (int j = i + 1; j < numStrs.length; j++) {
        // Compare concatenated strings to determine order for forming the largest number.
        if (double.parse(numStrs[i] + numStrs[j]) <
            double.parse(numStrs[j] + numStrs[i])) {
          // Swap elements if the concatenation of j followed by i yields a larger number.
          String temp = numStrs[i];
          numStrs[i] = numStrs[j];
          numStrs[j] = temp;
        }
      }
    }

    // If the largest number formed is 0, return '0'.
    if (numStrs[0] == '0') {
      return '0';
    }

    // Join the sorted strings to form the largest number possible and return it.
    return numStrs.join('');
  }
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