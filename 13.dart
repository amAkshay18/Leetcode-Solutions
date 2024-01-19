class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanNumerals = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };
    int result = 0;
    int prevValue = 0;
    for (int i = 0; i < s.length; i++) {
      int currentValue = romanNumerals[s[i]]!;
      if (currentValue > prevValue) {
        result += currentValue - 2 * prevValue;
      } else {
        result += currentValue;
      }
      prevValue = currentValue;
    }
    return result;
  }
}
