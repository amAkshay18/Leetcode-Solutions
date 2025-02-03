List<List<int>> sortTheStudents(List<List<int>> score, int k) {
  return score..sort((a,b) => b[k].compareTo(a[k]));
}