class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    List<String> morse = [
      ".-",
      "-...",
      "-.-.",
      "-..",
      ".",
      "..-.",
      "--.",
      "....",
      "..",
      ".---",
      "-.-",
      ".-..",
      "--",
      "-.",
      "---",
      ".--.",
      "--.-",
      ".-.",
      "...",
      "-",
      "..-",
      "...-",
      ".--",
      "-..-",
      "-.--",
      "--..",
    ];
    Set<String> transformations = {};
    for (String word in words) {
      String current = "";
      for (int i = 0; i < word.length; i++) {
        int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
        current += morse[index];
      }
      transformations.add(current);
    }
    return transformations.length;
  }
}
