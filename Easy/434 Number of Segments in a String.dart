// 434. Number of Segments in a String
int countSegments(String s) {
  return s.split(' ').where((element) => element.isNotEmpty).length;
}
