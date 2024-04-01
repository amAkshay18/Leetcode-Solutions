int sumOfTheDigitsOfHarshadNumber(int x) {
  String xString = x.toString();
  int sum = 0;
  for (int i = 0; i < xString.length; i++) {
    sum += int.parse(xString[i]);
  }
  return x % sum == 0 ? sum : -1;
}
