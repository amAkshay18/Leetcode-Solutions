// void main() {
//   String str = "Hello World";
//   print(str[0]);
//   print(str.substring(6, 11));
//   print(str.substring(6));
// }
bool canConstructSubstring(String s) {
  int len = s.length;
  for (int i = 1; i <= len ~/ 2; i++) {
    if (len % i == 0) {
      String subString = s.substring(0, i);
      String constructed = '';
      for (int j = 0; j < len ~/ i; j++) {
        constructed += subString;
      }
      if (constructed == s) {
        return true;
      }
    }
  }
  return false;
}

void main() {
  print(canConstructSubstring("abab")); // true
  print(canConstructSubstring("aba")); // false
  print(canConstructSubstring("abcabcabcabc")); // true
}
