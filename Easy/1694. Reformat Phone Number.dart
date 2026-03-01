class Solution {
  String reformatNumber(String number) {
    String digits = '';
    for (int i = 0; i < number.length; i++) {
      if (number[i] != ' ' && number[i] != '-') {
        digits += number[i];
      }
    }
    List<String> result = [];
    int i = 0;
    while (digits.length - i > 0) {
      int remaining = digits.length - i;
      if (remaining > 4) {
        result.add(digits.substring(i, i + 3));
        i += 3;
      } else if (remaining == 4) {
        result.add(digits.substring(i, i + 2));
        result.add(digits.substring(i + 2, i + 4));
        break;
      } else {
        result.add(digits.substring(i));
        break;
      }
    }
    return result.join('-');
  }
}
