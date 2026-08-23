class Solution {
  bool sumGame(String num) {
    int n = num.length;
    int half = n ~/ 2;

    int leftSum = 0;
    int rightSum = 0;

    int leftQuestions = 0;
    int rightQuestions = 0;

    // Check the first half
    for (int i = 0; i < half; i++) {
      if (num[i] == '?') {
        leftQuestions++;
      } else {
        leftSum += int.parse(num[i]);
      }
    }

    // Check the second half
    for (int i = half; i < n; i++) {
      if (num[i] == '?') {
        rightQuestions++;
      } else {
        rightSum += int.parse(num[i]);
      }
    }

    int diff = leftSum - rightSum;
    int questionDiff = leftQuestions - rightQuestions;

    // If the number of '?' on both sides is the same,
    // Alice wins if the current sums are different.
    if (questionDiff == 0) {
      return diff != 0;
    }

    // Alice wins unless the difference can be perfectly balanced.
    return 2 * diff != -9 * questionDiff;
  }
}