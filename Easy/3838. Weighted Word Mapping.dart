class Solution {
  String mapWordWeights(List<String> words, List<int> weights) {
    String result = "";
    for (String word in words) {
      int sum = 0;
      for (int i = 0; i < word.length; i++) {
        String ch = word[i];
        int index = ch.codeUnitAt(0) - 'a'.codeUnitAt(0);
        sum += weights[index];
      }
      int mod = sum % 26;
      String mappedChar = String.fromCharCode('z'.codeUnitAt(0) - mod);
      result += mappedChar;
    }
    return result;
  }
}