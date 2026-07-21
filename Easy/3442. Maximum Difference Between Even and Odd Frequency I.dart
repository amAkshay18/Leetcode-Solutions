class Solution {
  int maxDifference(String s) {
    Map<String, int> charFrequency = {};
    for (var i = 0; i < s.length; i++) {
      charFrequency[s[i]] = (charFrequency[s[i]] ?? 0) + 1;
    }
    int smallestEvenFrequency = 100;
    int largestOddFrequency = 0;
    for (var n in charFrequency.values) {
      if (n % 2 == 0 && smallestEvenFrequency > n) smallestEvenFrequency = n;
      if (n % 2 == 1 && largestOddFrequency < n) largestOddFrequency = n;
    }
    return largestOddFrequency - smallestEvenFrequency;
  }
}