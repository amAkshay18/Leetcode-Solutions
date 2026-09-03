class Solution {
  String reformat(String s) {
    List<String> numbers = [];
    List<String> alpha = [];
    String result = "";
    for (int i = 0; i < s.length; i++) {
      if (int.tryParse(s[i]) != null) {
        numbers.add(s[i]);
      } else {
        alpha.add(s[i]);
      }
    }
    if ((alpha.length - numbers.length).abs() > 1) {
      return "";
    }
    bool startWithAlpha = alpha.length >= numbers.length;
    while (alpha.isNotEmpty || numbers.isNotEmpty) {
      if (startWithAlpha && alpha.isNotEmpty) {
        result += alpha.removeAt(0);
      } else if (numbers.isNotEmpty) {
        result += numbers.removeAt(0);
      }
      startWithAlpha = !startWithAlpha;
    }
    return result;
  }
}