int dayOfYear(String date) {
  List<int> months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  List<String> dateComponents = date.split('-');

  if (dateComponents.length != 3) {
    throw ArgumentError('Invalid date format. Use YYYY-MM-DD.');
  }

  int year = int.parse(dateComponents[0]);
  int month = int.parse(dateComponents[1]);
  int day = int.parse(dateComponents[2]);

  // Check for leap year and update February days accordingly
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    months[1] = 29;
  }

  // Calculate the day number of the year
  int dayNumber = day; // Start with the day of the specified month

  // Accumulate days from the beginning of the year up to the specified month
  for (int i = 0; i < month - 1; i++) {
    dayNumber += months[i];
  }

  return dayNumber;
}
