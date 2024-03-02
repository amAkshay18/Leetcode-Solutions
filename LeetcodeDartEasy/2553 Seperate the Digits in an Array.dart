class Solution {
  List<int> separateDigits(List<int> nums) {
    List<int> separatedNumbers = [];
    for (int num in nums) {
      if (num < 10) {
        separatedNumbers.add(num);
      } else {
        String numStr = num.toString();
        for (int i = 0; i < numStr.length; i++) {
          separatedNumbers.add(int.parse(numStr[i]));
        }
      }
    }
    return separatedNumbers;
  }
}
