int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
  return hours.where((element) => element >= target).length;
}
