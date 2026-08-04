class Solution {
  int countCollisions(String directions) {
    // Remove leading 'L'
    while (directions.startsWith('L')) {
      directions = directions.substring(1);
    }
    // Remove trailing 'R'
    while (directions.endsWith('R')) {
      directions = directions.substring(0, directions.length - 1);
    }
    // Count remaining R and L
    int countR = directions.split('').where((c) => c == 'R').length;
    int countL = directions.split('').where((c) => c == 'L').length;
    return countR + countL;
  }
}
