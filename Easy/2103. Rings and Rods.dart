class Solution {
  int countPoints(String rings) {
    List<Set<String>> rods = List.generate(10, (_) => <String>{});
    for (int i = 0; i < rings.length; i += 2) {
      String color = rings[i];
      int rod = int.parse(rings[i + 1]);
      rods[rod].add(color);
    }
    int count = 0;
    for (int i = 0; i < 10; i++) {
      if (rods[i].length == 3) count++;
    }
    return count;
  }
}
