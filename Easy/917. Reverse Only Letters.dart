String reverseOnlyLetters(String s) {
  List<String> charList = s.split('');
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (!isEnglishLetter(charList[left])) {
      left++;
    } else if (!isEnglishLetter(charList[right])) {
      right--;
    } else {
      String temp = charList[left];
      charList[left] = charList[right];
      charList[right] = temp;
      left++;
      right--;
    }
  }
  return charList.join('');
}

bool isEnglishLetter(String char) {
  return (char.compareTo('a') >= 0 && char.compareTo('z') <= 0) ||
      (char.compareTo('A') >= 0 && char.compareTo('Z') <= 0);
}
