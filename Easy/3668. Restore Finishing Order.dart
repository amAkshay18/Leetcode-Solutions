class Solution {
  List<int> recoverOrder(List<int> order, List<int> friends) {
    final Set<int> friendSet = friends.toSet();
    List<int> result = [];
    for (int id in order) {
      if (friendSet.contains(id)) {
        result.add(id);
      }
    }
    return result;
  }
}