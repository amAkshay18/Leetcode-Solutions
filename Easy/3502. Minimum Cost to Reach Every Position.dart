class Solution {
  List<int> minCosts(List<int> cost) {
    List<int> result = [cost.first];
    for (var i = 1; i < cost.length; i++) {
      if (result.last > cost[i]) {
        result.add(cost[i]);
      } else {
        result.add(result.last);
      }
    }
    return result;
  }
}

class Solution2 {
  List<int> minCosts(List<int> cost) {
    List<int> result = [cost.first];
    for (var i = 1; i < cost.length; i++)
      result.add((result.last > cost[i] ? cost[i] : result.last));
    return result;
  }
}