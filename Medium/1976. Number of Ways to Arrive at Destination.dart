import 'dart:collection';

class Solution {
  int countPaths(int n, List<List<int>> roads) {
    final graph = <int, List<(int, int)>>{};
    for(var road in roads){
        final u = road [0];
        final v = road [1];
        final time = road [2];
        graph.putIfAbsent(u, () => []).add ((v, time));
        graph.putIfAbsent(v, () => []).add ((u, time));
    }
    const int MOD = 1000000007;
    final dist = List.filled(n, double.infinity);
    final ways = List.filled(n, 0);
    dist[0] = 0;
    ways[0] = 1;

    final pq = SplayTreeSet<(double, int)>(
        (a, b) => a.$1 == b.$1 ? a.$2.compareTo(b.$2) : a.$1.compareTo(b.$1)
    );
    pq.add((0, 0));
    while (pq.isNotEmpty){
        final(d, u) = pq.first;
        pq.remove(pq.first);
        if (d > dist[u]){
            continue;
        }
        final neighbour = graph[u] ?? [];
        for (var (v, time) in neighbour){
            if (dist[u] + time < dist[v]){
                dist[v] = dist[u] + time;
                ways[v] = ways[u];
                pq.add ((dist[v], v));
            }
            else if (dist[u] + time == dist[v]){
                ways[v] = (ways[v]+ways[u])% MOD;
            }
        }
    }
    return ways[n-1];
  }
}