class Solution {
  int maxRunTime(int n, List<int> batteries) {
    int left = 1;
    int right = batteries.reduce((a, b) => a + b);
    batteries.sort();
    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);
      if (canRun(mid, n, batteries)) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return right;
  }

  bool canRun(int hours, int n, List<int> batteries) {
    int sum = 0;
    int computers = n;
    for (int power in batteries) {
      sum += power;
      if (sum >= hours) {
        sum -= hours;
        computers--;
        if (computers == 0) return true;  
      }
    }
    return false;
  }
}
