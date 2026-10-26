class Solution {
  int countAsterisks(String s) {
    bool flag = false;
    int count = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '|') flag = !flag;
      if (flag == false && s[i] == '*') count++;
    }
    return count;
  }
}
