int canCompleteCiruit(List<int> gas, List<int> cost) {
  int totalTank = 0;
  int currentTank = 0;
  int startingStation = 0;
  for (int i = 0; i < gas.length; i++) {
    totalTank += gas[i] - cost[i];
    currentTank += gas[i] - cost[i];
    if (currentTank < 0) {
      startingStation = i + 1;
      currentTank = 0;
    }
  }
  return totalTank >= 0 ? startingStation : -1;
}
