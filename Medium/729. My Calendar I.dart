class MyCalendar {
  List<List<int>> events = [];
  MyCalendar() {}
  bool book(int start, int end) {
    for (var event in events) {
      if (event[0] < end && event[1] > start) return false;
    }
    events.add([start, end]);
    return true;
  }
}
