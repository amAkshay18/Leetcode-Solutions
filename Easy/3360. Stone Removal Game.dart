class Solution {
  bool canAliceWin(int n) {
    if (n < 10) return false;
    int totalStones = n;
    int totalTurns = 10;
    int record = 1;
    while (totalStones >= totalTurns) {
      totalStones = totalStones - totalTurns;
      totalTurns--;
      record++;
    }
    return record % 2 == 0;
  }
}
