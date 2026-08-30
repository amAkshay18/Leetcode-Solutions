class Solution {
  String dayOfTheWeek(int day, int month, int year) {
    const set = {
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday",
    };
    final date = DateTime(year, month, day);
    return set.elementAt(date.weekday - 1);
  }
}
