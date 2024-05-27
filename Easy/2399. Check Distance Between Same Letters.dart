bool checkDistances(String s, List<int> distance) {
  for (int i = 0; i < 26; i++) {
    String letter = String.fromCharCode('a'.codeUnitAt(0) + 1);
    int firstIndex = s.indexOf(letter);
    if (firstIndex != -1) {
      int secondIndex = s.indexOf(letter, firstIndex + 1);
      int actualIndex = secondIndex - firstIndex - 1;
      if (actualIndex != distance[i]) return false;
    }
  }
  return true;
}
