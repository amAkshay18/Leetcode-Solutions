int countCharacters(List<String> words, String chars) {
  int totalLength = 0;

  for (String word in words) {
    if (canFormWord(word, chars)) {
      totalLength += word.length;
    }
  }

  return totalLength;
}

bool canFormWord(String word, String chars) {
  Map<String, int> charCount = {};

  // Count the frequency of each character in chars
  for (int i = 0; i < chars.length; i++) {
    String char = chars[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  // Check if the word can be formed
  for (int i = 0; i < word.length; i++) {
    String char = word[i];
    if (!charCount.containsKey(char) || charCount[char] == 0) {
      return false;
    }
    charCount[char] = charCount[char]! - 1;
  }

  return true;
}

void main() {
  List<String> words = ["cat", "bt", "hat", "tree"];
  String chars = "atach";
  int result = countCharacters(words, chars);
  print(result); // Output: 6
}
