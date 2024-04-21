int countStudents(List<int> students, List<int> sandwiches) {
  int i = 0;
  int count = 1;
  while (students.isNotEmpty && count < students.length) {
    if (students.first != sandwiches[i]) {
      students.add(students.first);
      count++;
    } else {
      count = 0;
      i++;
    }
    students.removeAt(0);
  }
  return students.length;
}
