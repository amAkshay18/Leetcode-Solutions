class Solution {
  int elevatorRequests(int n, List<int> requests) {
    int ans = requests[0];
    for (int i = 1; i < requests.length; i++) {
      ans += (requests[i] - requests[i - 1]).abs();
    }
    return ans;
  }
}