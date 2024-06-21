// Forward declaration of guess API.
int guess(int num) {
  // This is a placeholder implementation.
  // In a real scenario, this function would be implemented elsewhere and would not be hard-coded.
  // The function should return:
  // -1 if num is higher than the picked number
  //  1 if num is lower than the picked number
  //  0 if num is the picked number.
  return 0;
}

class Solution {
  int guessNumber(int n) {
    int left = 1;
    int right = n;

    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      int result = guess(mid);
      if (result == 0) {
        return mid;
      } else if (result == 1) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }
}

void main() {
  Solution solution = Solution();
  int n = 10; // Example number range
  int pickedNumber = solution.guessNumber(n);
  print("Picked number is: $pickedNumber");
}
