import 'dart:math';

int countDays(int days, List<List<int>> meetings) {
  meetings.sort((a, b) => a[0].compareTo(b[0]));
  int prevEnd = 0;
  for (List<int> meeting in meetings) {
    int start = meeting[0];
    int end = meeting[1];
    start = max(start, prevEnd + 1);
    int length = end - start + 1;
    days -= max(length, 0);
    prevEnd = max(prevEnd, end);
  }
  return days;
}
