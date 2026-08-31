class Solution {
  int countOfSubstrings(String word, int k) {
    int numValidSubstrings = 0;
    int start = 0;
    int end = 0;

    Map<String, int> vowelCount = {};
    int consonantCount = 0;

    List<int> nextConsonant = List<int>.filled(word.length, 0);
    int nextConsonantIndex = word.length;
    for (int i = word.length - 1; i >= 0; i--) {
      nextConsonant[i] = nextConsonantIndex;
      if (!isVowel(word[i])) {
        nextConsonantIndex = i;
      }
    }


    while (end < word.length) {
      String newLetter = word[end];

      if (isVowel(newLetter)) {
        vowelCount[newLetter] = (vowelCount[newLetter] ?? 0) + 1;
      } else {
        consonantCount++;
      }

     
      while (consonantCount > k) {
        String startLetter = word[start];
        if (isVowel(startLetter)) {
          vowelCount[startLetter] = vowelCount[startLetter]! - 1;
          if (vowelCount[startLetter] == 0) {
            vowelCount.remove(startLetter);
          }
        } else {
          consonantCount--;
        }
        start++;
      }

    
      while (
          start < word.length &&
          vowelCount.keys.length == 5 &&
          consonantCount == k) {
        numValidSubstrings += nextConsonant[end] - end;
        String startLetter = word[start];
        if (isVowel(startLetter)) {
          vowelCount[startLetter] = vowelCount[startLetter]! - 1;
          if (vowelCount[startLetter] == 0) {
            vowelCount.remove(startLetter);
          }
        } else {
          consonantCount--;
        }
        start++;
      }
      end++;
    }

    return numValidSubstrings;
  }

  bool isVowel(String c) {
    return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
  }
}