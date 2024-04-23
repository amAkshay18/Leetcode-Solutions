List<List<int>> combinationSum(List<int> candidates, int target) {
  List<List<List<int>>> combinations = List.generate(target + 1, (_) => []);
  print(combinations);
  for (int c in candidates) {
    for (int i = 1; i <= target; i++) {
      if (i < c) continue;
      if (i == c) {
        combinations[i].add([c]);
      } else {
        for (List<int> prevList in combinations[i - c]) {
          combinations[i].add([...prevList, c]);
        }
      }
    }
  }
  return combinations[target];
}

void main() {
  // List<int> example1 = [2, 3, 6, 7];
  // var result1 = combinationSum(example1, 7);
  // print(result1);

  List<int> example2 = [2, 3, 5];
  var result2 = combinationSum(example2, 8);
  print(result2);
}
