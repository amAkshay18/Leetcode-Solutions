class Solution {
  List<int> stableMountains(List<int> height, int threshold) {
    List<int> arr = [];
    for (int i = 1; i < height.length; i++) {
      if (height[i-1] > threshold) {
        arr.add(i);
      }
    }
    return arr;
  }
}