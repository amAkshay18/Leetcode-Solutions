bool isPalindrome(String s) {
  if (s.isEmpty) return true;
  s = s.toLowerCase();
  s = s.replaceAll(RegExp(r'[^a-z0-9]'), '');
  String reverse = s.split(' ').reversed.join();
  return s == reverse;
}

void main() {
  String s = "A man, a plan, a canal: Panama";
  bool result = isPalindrome(s);
  print(result);
}
