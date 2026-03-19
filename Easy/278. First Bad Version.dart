// Mock API (for testing)
bool isBadVersion(int version) {
  int bad = 4; // Example
  return version >= bad;
}

class Solution {
  int firstBadVersion(int n) {
    int left = 1;
    int right = n;

    while (left < right) {
      int mid = left + (right - left) ~/ 2;

      if (isBadVersion(mid)) {
        // mid might be the first bad version
        right = mid;
      } else {
        // mid is good, move right
        left = mid + 1;
      }
    }

    return left; // or right
  }
}

void main() {
  Solution solution = Solution();
  print(solution.firstBadVersion(5)); // Output: 4
}
