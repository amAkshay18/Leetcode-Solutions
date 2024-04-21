class Solution {
  bool judgeCircle(String moves) {
    int horizontal = 0;
    int vertical = 0;
    for (int i = 0; i < moves.length; i++) {
      if (moves[i] == 'R') {
        horizontal++;
      } else if (moves[i] == 'L') {
        horizontal--;
      } else if (moves[i] == 'U') {
        vertical++;
      } else if (moves[i] == 'D') {
        vertical--;
      }
    }
    return horizontal == 0 && vertical == 0;
  }
}
