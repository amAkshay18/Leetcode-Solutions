String sortVowels(String s) {
  List<String> chars = s.split('');
  List<String> vowels = [];
  List<int> indices = [];
  for (int i = 0; i < chars.length; i++) {
    if ('aeiouAEIOU'.contains(chars[i])) {
      vowels.add(chars[i]);
      indices.add(i);
    }
  }
  vowels.sort();
  for (int i = 0; i < vowels.length; i++) {
    chars[indices[i]] = vowels[i];
  }
  return chars.join('');
}
