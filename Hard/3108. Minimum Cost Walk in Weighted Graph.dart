class Solution {
  List<int> parent = [];
  List<int> minPathCost = [];

  int findRoot(int node) {
    while (parent[node] != node) {
      parent[node] = parent[parent[node]]; // Path compression
      node = parent[node];
    }
    return node;
  }

  List<int> minimumCost(int n, List<List<int>> edges, List<List<int>> query) {
    parent = List.generate(n, (index) => index);
    minPathCost = List.filled(n, -1);

    for (var edge in edges) {
      int source = edge[0];
      int target = edge[1];
      int weight = edge[2];

      int sourceRoot = findRoot(source);
      int targetRoot = findRoot(target);

      if (minPathCost[sourceRoot] == -1) minPathCost[sourceRoot] = weight;
      else minPathCost[sourceRoot] &= weight;

      if (minPathCost[targetRoot] == -1) minPathCost[targetRoot] = weight;
      else minPathCost[targetRoot] &= weight;

      if (sourceRoot != targetRoot) {
        // Merge and update minPathCost
        parent[sourceRoot] = targetRoot;
        minPathCost[targetRoot] &= minPathCost[sourceRoot];
      }
    }

    List<int> result = [];
    for (var q in query) {
      int start = q[0];
      int end = q[1];

      if (start == end) {
        result.add(0);
      } else if (findRoot(start) != findRoot(end)) {
        result.add(-1);
      } else {
        result.add(minPathCost[findRoot(start)]);
      }
    }

    return result;
  }
}