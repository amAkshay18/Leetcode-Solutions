class Solution {
  int passThePillow(int n, int time) {
    int currentPosition = 1;
    bool movingRight = true;
    for (int second = 1; second <= time; second++) {
      // Pass the pillow to the next person
      if (movingRight) {
        currentPosition++;
        if (currentPosition > n) {
          currentPosition = n - 1;
          movingRight = false;
        }
      } else {
        currentPosition--;
        if (currentPosition < 1) {
          currentPosition = 2;
          movingRight = true;
        }
      }
    }
    return currentPosition;
  }
}
