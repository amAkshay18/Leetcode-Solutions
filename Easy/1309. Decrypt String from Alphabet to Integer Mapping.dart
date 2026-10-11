class Solution {
  String freqAlphabets(String s) {
    final List<String> result = [];
    var i = 0;
    while (i < s.length) {
      if (i + 2 < s.length && s[i + 2] == '#') {
        result.add(
          String.fromCharCode(
            'a'.codeUnitAt(0) + (int.parse(s[i] + s[i + 1]) - 1),
          ),
        );
        i += 3;
      } else {
        result.add(
          String.fromCharCode('a'.codeUnitAt(0) + (int.parse(s[i]) - 1)),
        );
        i++;
      }
    }
    return result.join();
  }
}
