bool isValid(String word) {
  if (word.length < 3) return false;
  final validCharsRegEx = RegExp(r'^[a-zA-Z0-9]+$');
  if (!validCharsRegEx.hasMatch(word)) return false;
  final vowelRegEx = RegExp(r'[aeiouAEIOU]');
  if (!vowelRegEx.hasMatch(word)) return false;
  final consonantRegEx = RegExp(r'[^aeiouAEIOU\d]');
  if (!consonantRegEx.hasMatch(word)) return false;
  return true;
}
