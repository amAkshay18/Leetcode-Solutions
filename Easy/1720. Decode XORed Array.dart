class Solution {
  List<int> decode(List<int> encoded, int first) {
    List<int> result = [];
    result.add(first);
    int acc = first;
    for (int v in encoded) {
      acc ^= v;
      result.add(acc);
    }
    return result;
  }
}
