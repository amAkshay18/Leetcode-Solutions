class Solution {
  bool isCircularSentence(String sentence) {
    List<String>words = sentence.split(" ");
    words.add(words[0]);
    for (int i = 0; i < words.length - 1; i++) {
      String a = words[i];
      String b = words[i + 1];
      String last = a[a.length - 1];
      String first = b[0];
      if (last != first) return false;
    }
    return true;
  }
}