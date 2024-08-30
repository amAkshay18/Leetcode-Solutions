class Solution {
  int minimumChairs(String s) {
    int currentOccupancy = 0;
    int maxOccupancy = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == 'E') {
        currentOccupancy++;
      } else {
        currentOccupancy--;
      }
      if (currentOccupancy > maxOccupancy) {
        maxOccupancy = currentOccupancy;
      }
    }
    return maxOccupancy;
  }
}
