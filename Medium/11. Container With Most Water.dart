int maxArea(List<int> height) {
  int leftIndex = 0;
  int rightIndex = height.length - 1;
  int mostWaterStored = 0;
  while (leftIndex < rightIndex) {
    final leftHeight = height[leftIndex];
    final righttHeight = height[rightIndex];
    final width = rightIndex - leftIndex;
    final minHeight = leftHeight < righttHeight ? leftHeight : righttHeight;
    final currentWaterStored = width * minHeight;
    mostWaterStored = currentWaterStored > mostWaterStored
        ? currentWaterStored
        : mostWaterStored;
    minHeight == leftHeight ? leftIndex++ : rightIndex--;
  }
  return mostWaterStored;
}

// JAVA Solution
// public int maxArea(List<Integer> height) {
//     int leftIndex = 0;
//     int rightIndex = height.size() - 1;
//     int mostWaterStored = 0;

//     while (leftIndex < rightIndex) {
//         int leftHeight = height.get(leftIndex);
//         int rightHeight = height.get(rightIndex);

//         int width = rightIndex - leftIndex;

//         int minHeight = Math.min(leftHeight, rightHeight);

//         int currentWaterStored = width * minHeight;

//         mostWaterStored = Math.max(currentWaterStored, mostWaterStored);

//         if (minHeight == leftHeight) {
//             leftIndex++;
//         } else {
//             rightIndex--;
//         }
//     }

//     return mostWaterStored;
// }
