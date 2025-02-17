int numTilePossibilities(String tiles) {
  Set<String> sequences = {};
  List<bool> used = List.filled(tiles.length, false);
  List<String> chars = tiles.split("");
  chars.sort();
  void backtrack(String current) {
    if (current.isNotEmpty) {
      sequences.add(current);
    }
    for (int i = 0; i < chars.length; i++) {
      if (used[i]) continue;
      if (i > 0 && chars[i] == chars[i - 1] && !used[i - 1]) continue;
      used[i] = true;
      backtrack(current + chars[i]);
      used[i] = false;
    }
  }

  backtrack("");
  return sequences.length;
}
