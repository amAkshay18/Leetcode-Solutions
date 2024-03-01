class Solution {
  int largestInteger(int num) {
    List<String> numString = num.toString().split('');
    for (int i = 0; i < numString.length; i++) {
      for (int j = i + 1; j < numString.length; j++) {
        if (numString[j].compareTo(numString[i]) > 0 &&
            (int.parse(numString[j]) - int.parse(numString[i])) % 2 == 0) {
          String temp = numString[i];
          numString[i] = numString[j];
          numString[j] = temp;
        }
      }
    }
    return int.parse(numString.join());
  }
}
