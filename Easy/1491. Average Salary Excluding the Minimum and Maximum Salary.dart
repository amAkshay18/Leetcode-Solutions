double average(List<int> salary) {
  salary.sort();
  salary.removeAt(0);
  salary.removeAt(salary.length - 1);
  double sum = salary.reduce((value, element) => value + element).toDouble();
  return sum / salary.length;
}
