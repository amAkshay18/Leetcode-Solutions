List<String> findWords(List<String> words) {
  final rows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"];
  return words
      .where((word) =>
          rows.any((row) => word.toLowerCase().split('').every(row.contains)))
      .toList();
}
