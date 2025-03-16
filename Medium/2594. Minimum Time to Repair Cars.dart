  import 'dart:math';

int repairCars(List<int> ranks, int cars) {
    int left = 1;
    int right = ranks.reduce(min) * cars * cars;
    int result = right;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      int totalCars = 0;
      for (int rank in ranks) {
        int maxCars = sqrt(mid / rank).floor();
        totalCars += maxCars;
      }
      if (totalCars >= cars) {
        result = mid;
        right =mid - 1;
      } else {
        left = mid + 1;
      }
    }
    return result;
  }