class Solution {
  List<List<int>> mergeSimilarItems(
    List<List<int>> items1,
    List<List<int>> items2,
  ) {
    Map<int, int> weights = {};

    // Add items from items1
    for (int i = 0; i < items1.length; i++) {
      int value = items1[i][0];
      int weight = items1[i][1];

      weights[value] = (weights[value] ?? 0) + weight;
    }

    // Add items from items2
    for (int i = 0; i < items2.length; i++) {
      int value = items2[i][0];
      int weight = items2[i][1];

      weights[value] = (weights[value] ?? 0) + weight;
    }

    // Get all values and sort them
    List<int> values = weights.keys.toList();
    values.sort();

    // Create the final answer
    List<List<int>> answer = [];

    for (int value in values) {
      answer.add([value, weights[value]!]);
    }
    return answer;
  }
}
