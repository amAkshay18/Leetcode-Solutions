String removeOccurances(String s, String part) {
  while (s.contains(part)) {
    s = s.replaceFirst(part, "");
  }
  return s;
}