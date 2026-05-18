int lastStoneWeight(List<int> stones){
  while (stones.length > 0) {
    stones.sort();
    int y = stones.removeLast();
    int x = stones.removeLast();
    if (x != y) {
      stones.add(y - x);
    }
  }
  return stones.isEmpty ? 0 : stones[0];
}