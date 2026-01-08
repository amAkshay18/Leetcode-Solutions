class Solution {
  List<int> minOperations(String boxes) {
    List<int> result = [];
    for (int i = 0; i < boxes.length; i++) {
      int count = 0;
      for (int j = 0; j < boxes.length; j++) {
        if (i != j && boxes[j] == "1") {
          count += (i-j).abs();
        }
      }
      result.add(count);
    }
    return result;
  }
}