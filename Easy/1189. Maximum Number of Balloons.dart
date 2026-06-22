class Solution {
  int maxNumberOfBalloons(String text) {
    final list = [
      count(text, 'b'),
      count(text, 'a'),
      count(text, 'l') ~/ 2,
      count(text, 'o') ~/ 2,
      count(text, 'n'),
    ];
    return list.reduce((min, e) => min > e ? e : min);
  }
  int count(String text, String e) {
    int c = 0;
    for (int i = 0; i < text.length; i++) {
      if (text[i] == e) {
        c++;
      }
    }
    return c;
  }
}