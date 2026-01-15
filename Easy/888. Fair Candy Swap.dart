class Solution {
  List<int> fairCandySwap(List<int> aliceSizes, List<int> bobSizes) {
  int lenA = aliceSizes.length;
  int lenB = bobSizes.length;
  int sumA = 0;
  int sumB = 0;
  int diff = 0;
  List<int> result = List<int>.filled(2, 0);
  for (int i = 0; i < lenA; i++) {
    sumA += aliceSizes[i];
  }
  for (int i = 0; i < lenB; i++) {
    sumB += bobSizes[i];
  }
  diff = (sumA - sumB) ~/ 2;
  for (int i = 0; i < lenA; i++) {
    for (int j = 0; j < lenB; j++) {
      if (aliceSizes[i] == bobSizes[j] + diff) {
        result[0] = aliceSizes[i];
        result[1] = bobSizes[j];
      }
    }
  }
  return result;
  }
}