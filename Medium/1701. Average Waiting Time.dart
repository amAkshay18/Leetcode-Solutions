// Solution 1
double averageWaitingTime1(List<List<int>> customers) {
  int waitingTime = 0;
  int currentTime = customers.first.first;
  for (var customer in customers) {
    var arrival = customer.first;
    var time = customer.last;
    if (currentTime > arrival) {
      currentTime = currentTime + time;
    } else {
      currentTime = arrival + time;
    }
    waitingTime = waitingTime + currentTime - arrival;
  }
  return waitingTime / customers.length;
}

// Solution 2
double averageWaitingTime2(List<List<int>> customers) {
  int currentTime = 0;
  int totalWaitTime = 0;
  for (var customer in customers) {
    int arrivalTime = customer[0];
    int prepTime = customer[1];
    if (currentTime < arrivalTime) {
      currentTime = arrivalTime;
    }
    currentTime += prepTime;
    int waitTime = currentTime - arrivalTime;
    totalWaitTime += waitTime;
  }
  return totalWaitTime / customers.length;
}

// Solution 3
double averageWaitingTime3(List<List<int>> customers) {
  var endingTime = customers[0][0] + customers[0][1];
  var totalTime = customers[0][1];
  var prevEnding = endingTime;
  for (int i = 1; i < customers.length; i++) {
    if (prevEnding >= customers[i][0]) {
      endingTime = prevEnding + customers[i][1];
      totalTime += (prevEnding - customers[i][0]) + customers[i][1];
      prevEnding = endingTime;
    } else {
      endingTime = customers[i][0] + customers[i][1];
      totalTime += (customers[i][1]);
      prevEnding = endingTime;
    }
  }
  return totalTime / customers.length;
}
