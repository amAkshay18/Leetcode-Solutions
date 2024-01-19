class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    Map<String, int> mapS = {};
    Map<String, int> mapT = {};
    for (int i = 0; s.length > i; i++) {
      mapS.addEntries({s[i]: i}.entries);
      mapT.addEntries({t[i]: i}.entries);
    }
    return mapS.values.join() == mapT.values.join();
  }
}
