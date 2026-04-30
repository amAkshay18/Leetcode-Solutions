class Solution {
  int maximumUnits(List<List<int>> boxTypes, int truckSize) {
    int sum = 0;
    boxTypes.sort((b, a) => a[1].compareTo(b[1]));
    for (int i = 0; i < boxTypes.length; i++) {
      if (boxTypes[i][0] <= truckSize) {
        sum += boxTypes[i][0] * boxTypes[i][1];
      }
      else {
        sum += truckSize*boxTypes[i][1];
      }
      truckSize = truckSize - boxTypes[i][0];
      if (truckSize <= 0) break;
    }
    return sum;
  }
}