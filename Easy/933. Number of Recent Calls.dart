class RecentCounter {
  List<int> requests = [];
  RecentCounter() {}

  int ping(int t) {
    requests.add(t);
    int ans = 0;
    for (var i = requests.length - 1; i >=0 ; i--) {
      if (requests[i] >= t - 3000 && requests[i] <= t) {
        ans++;
      } else {
        requests.removeAt(i);
      }
    }
    return ans;
  }
}
