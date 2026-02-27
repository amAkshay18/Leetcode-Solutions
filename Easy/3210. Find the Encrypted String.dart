class Solution {
  String getEncryptedString(String s, int k) {
    List<String> result = s.split('');
    int n = s.length;
    for (int i = 0; i < n; i++) {
      int index = (i + k) % n;
      result[i] = s[index];
    }
    return result.join();
  }
}
