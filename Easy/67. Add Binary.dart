String addBinary(String a, String b) {
  BigInt numA = BigInt.parse(a, radix: 2);
  BigInt numB = BigInt.parse(b, radix: 2);
  BigInt sum = numA + numB;
  return sum.toRadixString(2);
}
