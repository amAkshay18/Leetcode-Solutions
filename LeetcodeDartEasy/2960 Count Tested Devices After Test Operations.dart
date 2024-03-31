// Solution 1
int countTestedDevices(List<int> batteryPercentages) {
  int count = 0;
  for (var batterPercentage in batteryPercentages) {
    if (batterPercentage > count) count += 1;
  }
  return count;
}

// Solution 2
int countTestedDevices2(List<int> batteryPercentages) {
  int count = 0;
  for (int i = 0; i < batteryPercentages.length; i++) {
    if (batteryPercentages[i] > 0) {
      count++;
      for (int j = i + 1; j < batteryPercentages.length; j++) {
        if (batteryPercentages[j] > 0) batteryPercentages[j]--;
      }
    }
  }
  return count;
}
