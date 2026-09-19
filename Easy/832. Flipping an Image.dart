class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    List<List<int>> result = [];
    for (var i = 0; i < image.length; i++) {
      List<int> reversed = image[i].reversed.toList();
      for (int j = 0; j < reversed.length; j++) {
        if (reversed[j] == 0) {
          reversed[j] = 1;
        } else {
          reversed[j] = 0;
        }
      }
      result.add(reversed);
    }
    return result;
  }
}