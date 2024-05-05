int countDigits(int num) {
  int reminder = 0;
  int temp = num;
  int result = 0;
  while (temp > 0) {
    reminder = temp % 10;
    if (num % reminder == 0) result++;
    temp = temp ~/ 10;
  }
  return result;
}
