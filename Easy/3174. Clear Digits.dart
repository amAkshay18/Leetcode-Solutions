String clearDigits(String s) {
  List<String> char = s.split("");
  for (int i = 0; i < char.length; i++) {
    try {
      int.parse(char[i]);
      char.removeRange(i - 1, i + 1);
      i = 0;
    } catch (e) {}
    ;
  }
  return char.join();
}
