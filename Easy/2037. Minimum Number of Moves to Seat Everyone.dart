int minMovesToSeat(List<int> seats, List<int> students) {
  seats.sort();
  students.sort();
  int totalMoves = 0;
  for (int i = 0; i < seats.length; i++) {
    totalMoves += (seats[i] - students[i]).abs();
  }
  return totalMoves;
}
