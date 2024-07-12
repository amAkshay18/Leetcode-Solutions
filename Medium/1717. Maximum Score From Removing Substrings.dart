int maximumGain(String s, int x, int y) {
  int score = 0;
  void addScore(int points) {
    score += points;
  }

  String removePattern(String s, String pattern, int points) {
    var stack = <String>[];
    for (var char in s.split('')) {
      if (stack.isNotEmpty && stack.last == pattern[0] && char == pattern[1]) {
        stack.removeLast();
        addScore(points);
      } else {
        stack.add(char);
      }
    }
    return stack.join('');
  }

  if (x > y) {
    s = removePattern(s, "ab", x);
    s = removePattern(s, "ba", y);
  } else {
    s = removePattern(s, "ba", y);
    s = removePattern(s, "ab", x);
  }
  return score;
}
