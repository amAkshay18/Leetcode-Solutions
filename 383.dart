class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<String> ransomChars = ransomNote.split('');
    List<String> magazineChars = magazine.split('');
    int count = 0;
    for (int i = 0; i < ransomChars.length; i++) {
      for (int j = 0; j < magazineChars.length; j++) {
        if (ransomChars[i] == magazineChars[j]) {
          magazineChars[j] = '0';
          count++;
          break;
        }
      }
    }
    return count == ransomChars.length;
  }
}
