class Solution {
  List<int> numberOfLines(List<int> widths, String s) {
    int lineCount = 1;
    int currentLineWidth = 0;

    for (int i = 0; i < s.length; i++) {
      int charIndex = s.codeUnitAt(i) - 'a'.codeUnitAt(0);
      int charWidth = widths[charIndex];

      if (currentLineWidth + charWidth > 100) {
        lineCount++;
        currentLineWidth = charWidth;
      } else {
        currentLineWidth += charWidth;
      }
    }

    return [lineCount, currentLineWidth];
  }
}
