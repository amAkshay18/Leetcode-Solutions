String reverseVowels(String s) {
  List<String> result = s.split('');
  Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
  int i = 0;
  int j = result.length - 1;
  while (i < j) {
    while (i < j && !vowels.contains(result[i])) {
      i++;
    }
    while (i < j && !vowels.contains(result[j])) {
      j--;
    }
    if (i < j) {
      String temp = result[i];
      result[i] = result[j];
      result[j] = temp;
      j--;
      i++;
    }
  }
  return result.join('');
}

void main() {
  print(reverseVowels("hello")); // Output: "holle"
}
