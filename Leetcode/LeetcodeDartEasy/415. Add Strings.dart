String addStrings(String num1, String num2) {
  BigInt bigIntNum1 = BigInt.parse(num1);
  BigInt bigIntNum2 = BigInt.parse(num2);
  BigInt sum = bigIntNum1 + bigIntNum2;
  return sum.toString();
}
