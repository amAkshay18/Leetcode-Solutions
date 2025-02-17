int minCostClimbingStairs(List<int> cost) {
  int first = cost[0];
  int second = cost[1];
  if (cost.length <= 2) {
    return first < second ? first : second;
  }
  for (int i = 2; i < cost.length; i++) {
    int current = cost[i] + (first < second ? first : second);
    first = second;
    second = current;
  }
  return first < second ? first : second;
}
