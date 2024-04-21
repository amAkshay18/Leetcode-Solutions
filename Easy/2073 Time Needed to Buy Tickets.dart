int timeRequiredToBuy(List<int> tickets, int k) {
  int time = 0;
  while (tickets[k] > 0) {
    for (int i = 0; i < tickets.length; i++) {
      if (tickets[i] > 0) {
        tickets[i]--;
        time++;
        if (tickets[i] == 0 && i == k) break;
      }
    }
  }
  return time;
}

void main() {
  List<int> arr = [2, 3, 2];
  int result = timeRequiredToBuy(arr, 2);
  print(result);
}
