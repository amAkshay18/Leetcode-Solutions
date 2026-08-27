class Solution {
  bool isSumEqual(String firstWord, String secondWord, String targetWord) {
    return convertToInt(firstWord) + convertToInt(secondWord) ==
        convertToInt(targetWord);
  }

  int convertToInt(String word) {
    String number = '';
    for (int i = 0; i < word.length; i++) {
      number += (word.codeUnitAt(i) - 97).toString();
    }
    return int.parse(number);
  }
}
