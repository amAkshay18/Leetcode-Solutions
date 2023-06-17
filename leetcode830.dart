// 830. Positions of Large Groups
// In a string s of lowercase letters, these letters form consecutive groups of the same character.

// For example, a string like s = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z", and "yy".

// A group is identified by an interval [start, end], where start and end denote the start and end indices (inclusive) of the group. In the above example, "xxxx" has the interval [3,6].

// A group is considered large if it has 3 or more characters.

// Return the intervals of every large group sorted in increasing order by start index.class Solution

List<List<int>> largeGroupPositions(String s) {
  List<List<int>> result = [];
  int n = s.length;
  int start = 0;
  for (int end = 1; end < n; end++) {
    if (s[end] != s[start]) {
      if (end - start >= 3) {
        result.add([start, end - 1]);
      }
      start = end;
    }
  }
  if (n - start >= 3) {
    result.add([start, n - 1]);
  }
  return result;
}
