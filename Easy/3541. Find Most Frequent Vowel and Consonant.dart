class Solution {
  int maxFreqSum(String s) {
    int maxVowelFreq = 0;
    int maxConsonantFreq = 0;
    Map<String, int> charFrequency = {};
    for (int i = 0; i < s.length; i++) {
      charFrequency[s[i]] = (charFrequency[s[i]] ?? 0) + 1;
    }
    charFrequency.forEach((char, freq) {
      if (char == "a" || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
        if (freq > maxVowelFreq) maxVowelFreq = freq;
      } else {
        if (freq > maxConsonantFreq) maxConsonantFreq = freq;
      }
    });
    return maxVowelFreq + maxConsonantFreq;
  }
}
