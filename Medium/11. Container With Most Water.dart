int maxArea(List<int> height) {
  int leftIndex = 0;
  int rightIndex = height.length - 1;
  int mostWaterStored = 0;
  while (leftIndex < rightIndex){
    final leftHeight = height[leftIndex];
    final righttHeight = height[rightIndex];
    final width = rightIndex - leftIndex;
    final minHeight = leftHeight < righttHeight ? leftHeight : righttHeight;
    final currentWaterStored = width * minHeight;
    mostWaterStored = currentWaterStored > mostWaterStored ? currentWaterStored : mostWaterStored;
    minHeight == leftHeight ? leftIndex++ : rightIndex--;
  }
  return mostWaterStored;
}