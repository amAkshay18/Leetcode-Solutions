  String getHappyString(int n, int k) {
    List<String> ans = [];
    _generateHappyString(n, "", ans);
    return k <= ans.length ? ans[k - 1] : ""; 
  }
  void _generateHappyString(int n, String current, List<String> ans) {
    if (current.length == n) {
      ans.add(current);
      return;
    }
    for (String char in ['a', 'b', 'c']) {
      if (current.isEmpty || current[current.length - 1] != char) {
        _generateHappyString(n, current + char, ans);
      }
    }
  }