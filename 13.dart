// 13. Roman to Integer
// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

// Symbol       Value
// I             1
// V             5
// X             10
// L             50
// C             100
// D             500
// M             1000
// For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

// Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

// I can be placed before V (5) and X (10) to make 4 and 9.
// X can be placed before L (50) and C (100) to make 40 and 90.
// C can be placed before D (500) and M (1000) to make 400 and 900.
class Solution {
  // Function to convert a Roman numeral to an integer
  int romanToInt(String s) {
    // Map to store Roman numeral characters and their integer values
    final Map<String, int> romanNumerals = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    // Initialize result and previous value variables
    int result = 0;
    int prevValue = 0;

    // Iterate through each character in the input string
    for (int i = 0; i < s.length; i++) {
      // Get the integer value of the current Roman numeral character
      int currentValue = romanNumerals[s[i]]!;

      // Check if the current value is greater than the previous value
      if (currentValue > prevValue) {
        // If true, subtract the previous value twice and add the current value
        result += currentValue - 2 * prevValue;
      } else {
        // If false, simply add the current value to the result
        result += currentValue;
      }

      // Update the previous value for the next iteration
      prevValue = currentValue;
    }

    // Return the final result
    return result;
  }
}
