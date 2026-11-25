int calPoints(List<String> operations) {
  List<int> values = [];
  for (var element in operations) {
    if (element == 'C') {
      values.removeLast();
    } else if (element == 'D') {
      values.add(values.last * 2);
    } else if (element == '+') {
      values.add(values.last + values[values.length - 2]);
    } else {
      values.add(int.parse(element));
    }
  }
  return values.isEmpty
      ? 0
      : values.reduce((value, element) => value + element);
}

// Solution 2
class Solution {
  int calPoints(List<String> operations) {
    int score = 0;
    List<int> scoreHistory = [];

    for (String op in operations) {
      if (op == 'C') {
        score -= scoreHistory.removeLast();
      } else if (op == 'D') {
        scoreHistory.add(scoreHistory.last * 2);
        score += scoreHistory.last;
      } else if (op == '+') {
        scoreHistory.add(
          scoreHistory.last + scoreHistory[scoreHistory.length - 2],
        );
        score += scoreHistory.last;
      } else {
        scoreHistory.add(int.parse(op));
        score += scoreHistory.last;
      }
    }

    return score;
  }
}
