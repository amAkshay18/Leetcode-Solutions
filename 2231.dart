// 2231. Largest Number After Digit Swaps by Parity
// You are given a positive integer num. You may swap any two digits of num that have the same parity (i.e. both odd digits or both even digits).
// Return the largest possible value of num after any number of swaps.
class Solution {
  int largestInteger(int num) {
    List<String> numString = num.toString().split('');
    for (int i = 0; i < numString.length; i++) {
      for (int j = i + 1; j < numString.length; j++) {
        if (numString[j].compareTo(numString[i]) > 0 &&
            (int.parse(numString[j]) - int.parse(numString[i])) % 2 == 0) {
          String temp = numString[i];
          numString[i] = numString[j];
          numString[j] = temp;
        }
      }
    }
    return int.parse(numString.join());
  }
}
