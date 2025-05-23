
  int numberOfSubstrings(String s) {
    Map<String, int> freq = {'a': 0, 'b': 0, 'c': 0};  
    int left = 0, ans = 0;

    for (int right = 0; right < s.length; right++) {
      freq[s[right]] = (freq[s[right]] ?? 0) + 1;

      // When all characters appear at least once, count valid substrings
      while (freq['a']! > 0 && freq['b']! > 0 && freq['c']! > 0) {
        ans += s.length - right; // Every substring ending at `right` is valid
        freq[s[left]] = freq[s[left]]! - 1;
        left++;
      }
    }
    
    return ans;
  }
