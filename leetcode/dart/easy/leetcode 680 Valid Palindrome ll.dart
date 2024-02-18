bool validPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return isPalindrome(s, left + 1, right) ||
          isPalindrome(s, left, right - 1);
    }
    left++;
    right--;
  }
  return true;
}

bool isPalindrome(String s, int start, int end) {
  while (start < end) {
    if (s[start] != s[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}
