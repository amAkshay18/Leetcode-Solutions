class Solution {
  String makeGood(String s) {
    String result = s;
    if (s.length > 1) {
      for (int i = 0; i < result.length - 1; i++) {
        if (result[i] != result[i + 1] &&
            result[i].toLowerCase() == result[i + 1].toLowerCase()) {
          result = result.replaceRange(i, i + 1, '');
          result = result.replaceRange(i, i + 1, '');
          print(result);
          i = -1;
        }
      }
    }
    return result;
  }
}

// Solution 2
class Solution2 {
  String makeGood(String s) {
    if (s.isEmpty) return '';
    List<int> result = [];
    for (int i = 0; i < s.length; i++) {
      int current = s.codeUnitAt(i);
      if (result.isNotEmpty &&
          (current - result.last == 32 || result.last - current == 32)) {
        result.removeLast();
      } else {
        result.add(current);
      }
    }

    return String.fromCharCodes(result);
  }
}
