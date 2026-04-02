class Solution {
  List<String> validStrings(int n) {
    List<String> list = [];
    for (int i = 0; i < 1000000; i++) {
      String conv = i.toRadixString(2).padLeft(n, "0");
      if (conv.length > n) {
        break;
      }
      if (!conv.contains("00")) {
        list.add(conv);
      }
    }
    return list;
  }
}