import 'dart:math';
class Solution {
  int punishmentNumber(int n) {
    int res = 0;
    for (int i = 1; i <= n; i++){
        final sq = i * i;
        if (sq == i || dfs(0, sq, i)){
            res += sq;
        }
    }
    return res;
  }
  bool dfs(int tot, int rem, int target){
    if (tot + rem == target) return true;
    for (int i = 1; i < 7; i++){
        final digit = pow(10, i).toInt();
        if (digit > rem) break;
        final res = dfs(tot + (rem % digit), rem ~/ digit, target);
        if (res) return true;
    }
    return false;
  }
}