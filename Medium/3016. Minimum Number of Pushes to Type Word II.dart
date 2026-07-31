class Solution {
  int minimumPushes(String word) {
    // Frequency of 26 lowercase letters
    List<int> freq = List.filled(26, 0);

    // Count frequency
    for (int i = 0; i < word.length; i++) {
      freq[word.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    // Sort in descending order
    freq.sort((a, b) => b.compareTo(a));

    int result = 0;
    int push = 1;

    for (int i = 0; i < 26; i++) {
      if (freq[i] == 0) break;

      result += freq[i] * push;

      // After every 8 letters, increase push count
      if ((i + 1) % 8 == 0) {
        push++;
      }
    }

    return result;
  }
}