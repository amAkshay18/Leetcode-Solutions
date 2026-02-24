class Solution {
  bool areNumbersAscending(String s) {
    List<int> numbers = [];
    String currentNumber = '';
    for (int i = 0; i < s.length; i++) {
      if (isDigit(s[i])) {
        currentNumber += s[i];
      } else {
        if (currentNumber.isNotEmpty) {
          numbers.add(int.parse(currentNumber));
          currentNumber = '';
        }
      }
    }
    if (currentNumber.isNotEmpty) {
      numbers.add(int.parse(currentNumber));
    }
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] <= numbers[i - 1]) return false;
    }
    return true;
  }

  bool isDigit(String ch) {
    return '0123456789'.contains(ch);
  }
}
